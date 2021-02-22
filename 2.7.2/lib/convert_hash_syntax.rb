def convert_hash_syntax(text)
  text.gsub(/:(?<key>[a-z0-9]+)\s*=>\s*/, '\k<key>: ')
end
