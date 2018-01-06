require "yaml"
require "pry"

def load_library(yml)
  #meaning => [eng_emo,jap_emo]
  emoticon = YAML.load_file(yml)

  lib_hash = {"get_meaning"=>{},"get_emoticon"=>{}}

  #create inner hashes {jap=>meaning} & {eng=>jap}
  emoticon.each do |meaning,emoticon_array|
    lib_hash["get_meaning"][emoticon_array[1]] = meaning
    lib_hash["get_emoticon"][emoticon_array[0]] = emoticon_array[1]
  end

  lib_hash
end

def get_japanese_emoticon(yml,emoticon)
  if load_library(yml)["get_emoticon"][emoticon]
    return load_library(yml)["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning
  # code goes here
end
