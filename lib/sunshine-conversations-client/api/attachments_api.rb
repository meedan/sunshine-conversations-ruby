=begin
#Sunshine Conversations API

The version of the OpenAPI document: 9.14.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class AttachmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete Attachment
    # Remove an attachment uploaded to Sunshine Conversations through the Upload attachment API. See [Attachments for Messages](#section/Attachments-for-Messages) to have attachments automatically deleted when deleting messages, conversations or users. <aside class=\"notice\">Note that deleted attachments can remain available on our CDN’s cache up to 15 minutes after the delete call.</aside> 
    # @param app_id [String] Identifies the app.
    # @param attachment_delete_body [AttachmentDeleteBody] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_attachment(app_id, attachment_delete_body, opts = {})
      data, _status_code, _headers = delete_attachment_with_http_info(app_id, attachment_delete_body, opts)
      data
    end

    # Delete Attachment
    # Remove an attachment uploaded to Sunshine Conversations through the Upload attachment API. See [Attachments for Messages](#section/Attachments-for-Messages) to have attachments automatically deleted when deleting messages, conversations or users. &lt;aside class&#x3D;\&quot;notice\&quot;&gt;Note that deleted attachments can remain available on our CDN’s cache up to 15 minutes after the delete call.&lt;/aside&gt; 
    # @param app_id [String] Identifies the app.
    # @param attachment_delete_body [AttachmentDeleteBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_attachment_with_http_info(app_id, attachment_delete_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.delete_attachment ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AttachmentsApi.delete_attachment"
      end
      # verify the required parameter 'attachment_delete_body' is set
      if @api_client.config.client_side_validation && attachment_delete_body.nil?
        fail ArgumentError, "Missing the required parameter 'attachment_delete_body' when calling AttachmentsApi.delete_attachment"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/attachments/remove'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(attachment_delete_body) 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#delete_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate Media Token
    # Generates a media JWT for a list of attachment paths. This media token is a prerequisite for setting the cookie needed to visualize a private attachment. <aside class=\"notice\">Note you have the ability to allow files using different rules, see <a href=\"https://docs.smooch.io/guide/private-attachments\">Private Attachments</a> for more details.</aside> 
    # @param app_id [String] Identifies the app.
    # @param attachment_media_token_body [AttachmentMediaTokenBody] 
    # @param [Hash] opts the optional parameters
    # @return [AttachmentMediaTokenResponse]
    def generate_media_json_web_token(app_id, attachment_media_token_body, opts = {})
      data, _status_code, _headers = generate_media_json_web_token_with_http_info(app_id, attachment_media_token_body, opts)
      data
    end

    # Generate Media Token
    # Generates a media JWT for a list of attachment paths. This media token is a prerequisite for setting the cookie needed to visualize a private attachment. &lt;aside class&#x3D;\&quot;notice\&quot;&gt;Note you have the ability to allow files using different rules, see &lt;a href&#x3D;\&quot;https://docs.smooch.io/guide/private-attachments\&quot;&gt;Private Attachments&lt;/a&gt; for more details.&lt;/aside&gt; 
    # @param app_id [String] Identifies the app.
    # @param attachment_media_token_body [AttachmentMediaTokenBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AttachmentMediaTokenResponse, Integer, Hash)>] AttachmentMediaTokenResponse data, response status code and response headers
    def generate_media_json_web_token_with_http_info(app_id, attachment_media_token_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.generate_media_json_web_token ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AttachmentsApi.generate_media_json_web_token"
      end
      # verify the required parameter 'attachment_media_token_body' is set
      if @api_client.config.client_side_validation && attachment_media_token_body.nil?
        fail ArgumentError, "Missing the required parameter 'attachment_media_token_body' when calling AttachmentsApi.generate_media_json_web_token"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/attachments/token'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(attachment_media_token_body) 

      # return_type
      return_type = opts[:return_type] || 'AttachmentMediaTokenResponse' 

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
        @api_client.config.logger.debug "API called: AttachmentsApi#generate_media_json_web_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set Cookie
    # With the media JWT retrieved, pass it in the header of the below request as it’s authorization in order to set a cookie in the user’s browser corresponding to the path within the media JWT. The expiration date of this cookie will match the expiration date of the media JWT. This cookie will be needed to visualize a private attachment. 
    # @param app_id [String] Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def set_cookie(app_id, opts = {})
      data, _status_code, _headers = set_cookie_with_http_info(app_id, opts)
      data
    end

    # Set Cookie
    # With the media JWT retrieved, pass it in the header of the below request as it’s authorization in order to set a cookie in the user’s browser corresponding to the path within the media JWT. The expiration date of this cookie will match the expiration date of the media JWT. This cookie will be needed to visualize a private attachment. 
    # @param app_id [String] Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def set_cookie_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.set_cookie ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AttachmentsApi.set_cookie"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/attachments/cookie'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
      auth_names = opts[:auth_names] || ['bearerAuth']

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
        @api_client.config.logger.debug "API called: AttachmentsApi#set_cookie\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload Attachment
    # Upload an attachment to Sunshine Conversations to use in future messages. Files are uploaded using the multipart/form-data content type. Use the returned mediaUrl to send a file, image or carousel message. <aside class=\"notice\">Note that Sunshine Conversations limits the size and type of file you can upload to the platform. See the <a href=\"https://docs.smooch.io/guide/validating-files\">file validation</a> guide for more details.</aside> 
    # @param app_id [String] Identifies the app.
    # @param access [String] The access level for the attachment. Currently the available access levels are public and private.
    # @param source [File] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :_for Specifies the intended container for the attachment, to enable automatic attachment deletion (on deletion of associated message, conversation or user). For now, only message is supported. See [Attachments for Messages](#section/Attachments-for-Messages) for details.
    # @option opts [String] :conversation_id Links the attachment getting uploaded to the conversation ID.
    # @return [AttachmentResponse]
    def upload_attachment(app_id, access, source, opts = {})
      data, _status_code, _headers = upload_attachment_with_http_info(app_id, access, source, opts)
      data
    end

    # Upload Attachment
    # Upload an attachment to Sunshine Conversations to use in future messages. Files are uploaded using the multipart/form-data content type. Use the returned mediaUrl to send a file, image or carousel message. &lt;aside class&#x3D;\&quot;notice\&quot;&gt;Note that Sunshine Conversations limits the size and type of file you can upload to the platform. See the &lt;a href&#x3D;\&quot;https://docs.smooch.io/guide/validating-files\&quot;&gt;file validation&lt;/a&gt; guide for more details.&lt;/aside&gt; 
    # @param app_id [String] Identifies the app.
    # @param access [String] The access level for the attachment. Currently the available access levels are public and private.
    # @param source [File] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :_for Specifies the intended container for the attachment, to enable automatic attachment deletion (on deletion of associated message, conversation or user). For now, only message is supported. See [Attachments for Messages](#section/Attachments-for-Messages) for details.
    # @option opts [String] :conversation_id Links the attachment getting uploaded to the conversation ID.
    # @return [Array<(AttachmentResponse, Integer, Hash)>] AttachmentResponse data, response status code and response headers
    def upload_attachment_with_http_info(app_id, access, source, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentsApi.upload_attachment ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AttachmentsApi.upload_attachment"
      end
      # verify the required parameter 'access' is set
      if @api_client.config.client_side_validation && access.nil?
        fail ArgumentError, "Missing the required parameter 'access' when calling AttachmentsApi.upload_attachment"
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling AttachmentsApi.upload_attachment"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/attachments'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'access'] = access
      query_params[:'for'] = opts[:'_for'] if !opts[:'_for'].nil?
      query_params[:'conversationId'] = opts[:'conversation_id'] if !opts[:'conversation_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['source'] = source

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'AttachmentResponse' 

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
        @api_client.config.logger.debug "API called: AttachmentsApi#upload_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
