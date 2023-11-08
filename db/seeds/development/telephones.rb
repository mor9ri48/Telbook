numbers = ["03-3265-6677", "044-911-0794", "044-299-8200"]
fnames = ["佐藤", "鈴木", "高橋", "田中"]
gnames = ["太郎", "次郎", "花子"]
names = Array.new(10)
0.upto(9) do |idx|
    names[idx] = "#{fnames[idx % 4]} #{gnames[idx % 3]}"
end
names.each do |name|
  friend = Friend.find_by(name: name)
  0.upto(2) do |idx|
    Telephone.create(
      user: friend,
      number: numbers[idx % 3],
      cellphone: (idx == 0)
    )
  end
end