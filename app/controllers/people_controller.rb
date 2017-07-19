class PeopleController < InheritedResources::Base

  private

    def person_params
      params.require(:person).permit(:fname, :lname, :born, :died, :hometown)
    end
end

