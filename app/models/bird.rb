class Bird < ApplicationRecord
    def create
        bird = Bird.create(params.permit(:name, :species))
        render json: bird, status: :created
    end
end
