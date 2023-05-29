class ProjectClientsController < InheritedResources::Base

  private

    def project_client_params
      params.require(:project_client).permit(:name, :address, :contact_no, :contact_support)
    end

end
