cats = [
    {
        name: 'Raisins',
        age: 3,
        enjoys: 'eating the houseplants'
    },
    {
        name: 'Toast',
        age: 2,
        enjoys: 'thumbs up'
    },
    {
        name: 'Bob',
        age: 7,
        enjoys: 'Laying around'
    }
]

cats.each do |attributes|
    Cat.create attributes
    puts "created cat #{attributes}"
end