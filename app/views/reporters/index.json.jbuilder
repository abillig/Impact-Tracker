json.array!(@reporters) do |reporter|
  json.name        reporter.name
end
