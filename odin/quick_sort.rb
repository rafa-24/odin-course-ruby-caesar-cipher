def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

# Ejemplo de uso:
numeros = [5, 3, 8, 4, 2]
resultado = bubble_sort(numeros)
puts "Arreglo ordenado: #{resultado}"
