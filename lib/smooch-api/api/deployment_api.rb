=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.9

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class DeploymentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Activate a phone number on the specified deployment.
    # @param deploymentId Identifies the deployment.
    # @param deploymentActivatePhoneNumberBody Body for an activatePhoneNumber request. 
    # @param [Hash] opts the optional parameters
    # @return [DeploymentResponse]
    def activate_phone_number(deploymentId, deploymentActivatePhoneNumberBody, opts = {})
      data, _status_code, _headers = activate_phone_number_with_http_info(deploymentId, deploymentActivatePhoneNumberBody, opts)
      return data
    end

    # 
    # Activate a phone number on the specified deployment.
    # @param deploymentId Identifies the deployment.
    # @param deploymentActivatePhoneNumberBody Body for an activatePhoneNumber request. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeploymentResponse, Fixnum, Hash)>] DeploymentResponse data, response status code and response headers
    def activate_phone_number_with_http_info(deploymentId, deploymentActivatePhoneNumberBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DeploymentApi.activate_phone_number ..."
      end
      # verify the required parameter 'deploymentId' is set
      if @api_client.config.client_side_validation && deploymentId.nil?
        fail ArgumentError, "Missing the required parameter 'deploymentId' when calling DeploymentApi.activate_phone_number"
      end
      # verify the required parameter 'deploymentActivatePhoneNumberBody' is set
      if @api_client.config.client_side_validation && deploymentActivatePhoneNumberBody.nil?
        fail ArgumentError, "Missing the required parameter 'deploymentActivatePhoneNumberBody' when calling DeploymentApi.activate_phone_number"
      end
      # resource path
      local_var_path = "/v1.1/whatsapp/deployments/{deploymentId}/activate".sub('{' + 'deploymentId' + '}', deploymentId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(deploymentActivatePhoneNumberBody)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeploymentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentApi#activate_phone_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Confirm code to complete phone number activation.
    # @param deploymentId Identifies the deployment.
    # @param deploymentConfirmCode Body for a confirmCode request. 
    # @param [Hash] opts the optional parameters
    # @return [DeploymentResponse]
    def confirm_code(deploymentId, deploymentConfirmCode, opts = {})
      data, _status_code, _headers = confirm_code_with_http_info(deploymentId, deploymentConfirmCode, opts)
      return data
    end

    # 
    # Confirm code to complete phone number activation.
    # @param deploymentId Identifies the deployment.
    # @param deploymentConfirmCode Body for a confirmCode request. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeploymentResponse, Fixnum, Hash)>] DeploymentResponse data, response status code and response headers
    def confirm_code_with_http_info(deploymentId, deploymentConfirmCode, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DeploymentApi.confirm_code ..."
      end
      # verify the required parameter 'deploymentId' is set
      if @api_client.config.client_side_validation && deploymentId.nil?
        fail ArgumentError, "Missing the required parameter 'deploymentId' when calling DeploymentApi.confirm_code"
      end
      # verify the required parameter 'deploymentConfirmCode' is set
      if @api_client.config.client_side_validation && deploymentConfirmCode.nil?
        fail ArgumentError, "Missing the required parameter 'deploymentConfirmCode' when calling DeploymentApi.confirm_code"
      end
      # resource path
      local_var_path = "/v1.1/whatsapp/deployments/{deploymentId}/code/confirm".sub('{' + 'deploymentId' + '}', deploymentId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(deploymentConfirmCode)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeploymentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentApi#confirm_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create a WhatsApp deployment.
    # @param deploymentCreateBody Body for a createDeployment request. 
    # @param [Hash] opts the optional parameters
    # @return [DeploymentResponse]
    def create_deployment(deploymentCreateBody, opts = {})
      data, _status_code, _headers = create_deployment_with_http_info(deploymentCreateBody, opts)
      return data
    end

    # 
    # Create a WhatsApp deployment.
    # @param deploymentCreateBody Body for a createDeployment request. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeploymentResponse, Fixnum, Hash)>] DeploymentResponse data, response status code and response headers
    def create_deployment_with_http_info(deploymentCreateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DeploymentApi.create_deployment ..."
      end
      # verify the required parameter 'deploymentCreateBody' is set
      if @api_client.config.client_side_validation && deploymentCreateBody.nil?
        fail ArgumentError, "Missing the required parameter 'deploymentCreateBody' when calling DeploymentApi.create_deployment"
      end
      # resource path
      local_var_path = "/v1.1/whatsapp/deployments"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(deploymentCreateBody)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeploymentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentApi#create_deployment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete the specified deployment.
    # @param deploymentId Identifies the deployment.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_deployment(deploymentId, opts = {})
      delete_deployment_with_http_info(deploymentId, opts)
      return nil
    end

    # 
    # Delete the specified deployment.
    # @param deploymentId Identifies the deployment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_deployment_with_http_info(deploymentId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DeploymentApi.delete_deployment ..."
      end
      # verify the required parameter 'deploymentId' is set
      if @api_client.config.client_side_validation && deploymentId.nil?
        fail ArgumentError, "Missing the required parameter 'deploymentId' when calling DeploymentApi.delete_deployment"
      end
      # resource path
      local_var_path = "/v1.1/whatsapp/deployments/{deploymentId}".sub('{' + 'deploymentId' + '}', deploymentId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentApi#delete_deployment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified deployment.
    # @param deploymentId Identifies the deployment.
    # @param [Hash] opts the optional parameters
    # @return [DeploymentResponse]
    def get_deployment(deploymentId, opts = {})
      data, _status_code, _headers = get_deployment_with_http_info(deploymentId, opts)
      return data
    end

    # 
    # Get the specified deployment.
    # @param deploymentId Identifies the deployment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeploymentResponse, Fixnum, Hash)>] DeploymentResponse data, response status code and response headers
    def get_deployment_with_http_info(deploymentId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DeploymentApi.get_deployment ..."
      end
      # verify the required parameter 'deploymentId' is set
      if @api_client.config.client_side_validation && deploymentId.nil?
        fail ArgumentError, "Missing the required parameter 'deploymentId' when calling DeploymentApi.get_deployment"
      end
      # resource path
      local_var_path = "/v1.1/whatsapp/deployments/{deploymentId}".sub('{' + 'deploymentId' + '}', deploymentId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeploymentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentApi#get_deployment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # List owned WhatsApp deployments.
    # @param [Hash] opts the optional parameters
    # @return [ListDeploymentsResponse]
    def list_deployments(opts = {})
      data, _status_code, _headers = list_deployments_with_http_info(opts)
      return data
    end

    # 
    # List owned WhatsApp deployments.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListDeploymentsResponse, Fixnum, Hash)>] ListDeploymentsResponse data, response status code and response headers
    def list_deployments_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DeploymentApi.list_deployments ..."
      end
      # resource path
      local_var_path = "/v1.1/whatsapp/deployments"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListDeploymentsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentApi#list_deployments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
