require "yaml"

def load_library(yml)
  emoticon = YAML.load_file(yml)
  puts emoticon.inspect
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
