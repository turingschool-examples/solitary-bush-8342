require "rails_helper"

RSpec.describe Ingredient, type: :model do
   describe "relationships" do
      it { should belong_to :recipe}
      it { should have_many :recipe_ingredients }
      it { should have_many(:recipes).through(:recipe_ingredients) }
   end

   describe "validations" do
      it { should validate_presence_of :name }
      it { should validate_presence_of :cost }
   end


end