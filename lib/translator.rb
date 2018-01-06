require "yaml"
require "pry"

def load_library(yml)
  #meaning => [eng_emo,jap_emo]
  emoticon = YAML.load_file(yml)

  lib_hash = {"get_meaning"=>{},"get_emoticon"=>{}}
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
