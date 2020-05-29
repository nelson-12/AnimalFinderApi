module Api
    module V1
        class AnimalController < ApplicationController
            before_action :authorize_access_request!,only: [:create, :list, :destroy]
            before_action :set_animal, only: [:destroy]

            def index
                render json: Animal.where(status: 1).with_attached_photo.order(id: :desc)
            end

            def list
                render json: current_user.animals.all.with_attached_photo.order(id: :desc)
            end

            def create
                @animal = current_user.animals.build(animal_params)

                if @animal.save
                    render json: @animal, status: :created
                else
                    render json: @animal.errors, status: :unprocessable_entity
                end
            end


            def update
                @animal = Animal.find(params[:id])
                if @animal.update(animal_params_edit) 
                    render json: @animal
                else
                  render json: @animal.errors, status: :unprocessable_entity
                end
            end

            def destroy
                @animal = Animal.find(params[:id])
                @animal.destroy 
            end

            def show
                @animal = Animal.find(params[:id])

                render json: @animal
            end

            def comunication
                @animal = Animal.find(params[:id])
                if @animal.update(params_comunication)
                    render json: @animal
                else
                  render json: @animal.errors, status: :unprocessable_entity
                end
            end

              
            private
            def set_animal
                @animal = current_user.animals.find(params[:id])
              end

            def animal_params
                params.permit(:name, :age, :extra_information, :state, :city, :status, :photo)
            end

            def animal_params_edit
                params.permit(:name, :age, :extra_information, :state, :city, :status)
            end

            def params_comunication
                params.permit(:name_finder, :phone_number_finder, :status)
            end
        end
    end
end
