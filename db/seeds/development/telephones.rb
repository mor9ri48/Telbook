numbers = ["03-3265-6677", "044-911-0794", "044-299-8200"]
names = ["佐藤 太郎", "鈴木 次郎", "高橋 花子"]
names.each do |name|
  friend = Friend.find_by(name: name)
  0.upto(9) do |idx|
    Telephone.create(
      user: friend,
      number: numbers,
      cellphone: (idx == 0)
    )
  end
end