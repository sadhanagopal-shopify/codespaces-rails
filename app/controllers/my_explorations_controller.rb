require 'openai'

class MyExplorationsController < ApplicationController
    def index
     
      openai_client = OpenAI::Client.new(api_key: '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', default_engine: "ada")
      message = params["q"]
      message = "Can you start by introducing yourself? And then tell a joke and explain that you would be helping me pick an oitfit today."

      response = openai_client.completions(
        engine: 'text-davinci-002',
        prompt: message,
        max_tokens: 60,
        n: 1,
        stop: '<<END>>',
        temperature: 0.7
      )
    
      @reply = response.choices.first.text.strip.gsub('<<END>>', '')
          
    end

    def chat
        message = params[:message]
        response = OpenAI::Completion.create(
          engine: 'text-davinci-002',
          prompt: message,
          max_tokens: 60,
          n: 1,
          stop: '<<END>>',
          temperature: 0.7
        )
      
        @reply = response.choices.first.text.strip.gsub('<<END>>', '')
      end
  end
  