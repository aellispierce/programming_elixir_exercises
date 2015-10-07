prefix = fn s -> (fn other -> "#{s} #{other}" end) end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
