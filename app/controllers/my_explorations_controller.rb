require 'openai'

class MyExplorationsController < ApplicationController
    def index
      puts "Before OpenAI"
      openai_client = OpenAI::Client.new(api_key: "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", default_engine: "ada")
      puts openai_client
      # List Engines
      # openai_client.engines
      # puts openai_client.engines
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
  