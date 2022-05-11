=begin
#Sunshine Conversations API

The version of the OpenAPI document: 9.7.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class ConversationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Conversation
    # Create a conversation for the specified user(s).
    # @param app_id [String] Identifies the app.
    # @param conversation_create_body [ConversationCreateBody] 
    # @param [Hash] opts the optional parameters
    # @return [ConversationResponse]
    def create_conversation(app_id, conversation_create_body, opts = {})
      data, _status_code, _headers = create_conversation_with_http_info(app_id, conversation_create_body, opts)
      data
    end

    # Create Conversation
    # Create a conversation for the specified user(s).
    # @param app_id [String] Identifies the app.
    # @param conversation_create_body [ConversationCreateBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConversationResponse, Integer, Hash)>] ConversationResponse data, response status code and response headers
    def create_conversation_with_http_info(app_id, conversation_create_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConversationsApi.create_conversation ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ConversationsApi.create_conversation"
      end
      # verify the required parameter 'conversation_create_body' is set
      if @api_client.config.client_side_validation && conversation_create_body.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_create_body' when calling ConversationsApi.create_conversation"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(conversation_create_body) 

      # return_type
      return_type = opts[:return_type] || 'ConversationResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversationsApi#create_conversation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Conversation
    # Delete an entire conversation record, along with its messages and attachments. Note that the default conversation cannot be deleted, but the messages contained [can be](#deleteAllMessages).
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_conversation(app_id, conversation_id, opts = {})
      data, _status_code, _headers = delete_conversation_with_http_info(app_id, conversation_id, opts)
      data
    end

    # Delete Conversation
    # Delete an entire conversation record, along with its messages and attachments. Note that the default conversation cannot be deleted, but the messages contained [can be](#deleteAllMessages).
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_conversation_with_http_info(app_id, conversation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConversationsApi.delete_conversation ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ConversationsApi.delete_conversation"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling ConversationsApi.delete_conversation"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversationsApi#delete_conversation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Conversation
    # Fetches an individual conversation.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param [Hash] opts the optional parameters
    # @return [ConversationResponse]
    def get_conversation(app_id, conversation_id, opts = {})
      data, _status_code, _headers = get_conversation_with_http_info(app_id, conversation_id, opts)
      data
    end

    # Get Conversation
    # Fetches an individual conversation.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConversationResponse, Integer, Hash)>] ConversationResponse data, response status code and response headers
    def get_conversation_with_http_info(app_id, conversation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConversationsApi.get_conversation ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ConversationsApi.get_conversation"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling ConversationsApi.get_conversation"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ConversationResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversationsApi#get_conversation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Conversations
    # Lists all conversations that a user is part of. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits). ```shell /v2/apps/:appId/conversations?filter[userId]=42589ad070d43be9b00ff7e5 ``` 
    # @param app_id [String] Identifies the app.
    # @param filter [ConversationListFilter] Contains parameters for filtering the results.
    # @param [Hash] opts the optional parameters
    # @option opts [Page] :page Contains parameters for applying cursor pagination.
    # @return [ConversationListResponse]
    def list_conversations(app_id, filter, opts = {})
      data, _status_code, _headers = list_conversations_with_http_info(app_id, filter, opts)
      data
    end

    # List Conversations
    # Lists all conversations that a user is part of. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits). &#x60;&#x60;&#x60;shell /v2/apps/:appId/conversations?filter[userId]&#x3D;42589ad070d43be9b00ff7e5 &#x60;&#x60;&#x60; 
    # @param app_id [String] Identifies the app.
    # @param filter [ConversationListFilter] Contains parameters for filtering the results.
    # @param [Hash] opts the optional parameters
    # @option opts [Page] :page Contains parameters for applying cursor pagination.
    # @return [Array<(ConversationListResponse, Integer, Hash)>] ConversationListResponse data, response status code and response headers
    def list_conversations_with_http_info(app_id, filter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConversationsApi.list_conversations ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ConversationsApi.list_conversations"
      end
      # verify the required parameter 'filter' is set
      if @api_client.config.client_side_validation && filter.nil?
        fail ArgumentError, "Missing the required parameter 'filter' when calling ConversationsApi.list_conversations"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = filter
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ConversationListResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversationsApi#list_conversations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Conversation
    # Updates a conversation record.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param conversation_update_body [ConversationUpdateBody] 
    # @param [Hash] opts the optional parameters
    # @return [ConversationResponse]
    def update_conversation(app_id, conversation_id, conversation_update_body, opts = {})
      data, _status_code, _headers = update_conversation_with_http_info(app_id, conversation_id, conversation_update_body, opts)
      data
    end

    # Update Conversation
    # Updates a conversation record.
    # @param app_id [String] Identifies the app.
    # @param conversation_id [String] Identifies the conversation.
    # @param conversation_update_body [ConversationUpdateBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConversationResponse, Integer, Hash)>] ConversationResponse data, response status code and response headers
    def update_conversation_with_http_info(app_id, conversation_id, conversation_update_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConversationsApi.update_conversation ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ConversationsApi.update_conversation"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling ConversationsApi.update_conversation"
      end
      # verify the required parameter 'conversation_update_body' is set
      if @api_client.config.client_side_validation && conversation_update_body.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_update_body' when calling ConversationsApi.update_conversation"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/conversations/{conversationId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'conversationId' + '}', CGI.escape(conversation_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(conversation_update_body) 

      # return_type
      return_type = opts[:return_type] || 'ConversationResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversationsApi#update_conversation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
