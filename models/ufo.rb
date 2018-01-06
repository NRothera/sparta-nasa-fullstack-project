class UFO

  attr_accessor :id, :title, :body, :image

  def save

    conn = UFO.open_connection

    if (!self.id)
      sql = "INSERT INTO delicious_food (title,body,image) VALUES ('#{self.title}', '#{self.body}', '#{self.image}')"
    else
      sql="UPDATE delicious_food SET title='#{self.title}', body='#{self.body}', image='#{self.image}' WHERE id=#{self.id}"
    end
    conn.exec(sql)
  end

  def self.open_connection

    conn=PG.connect(dbname: "delicious_food")

  end

  def self.all

    conn =self.open_connection

    sql = "SELECT id, title, body, image FROM delicious_food ORDER BY id DESC"

    results = conn.exec(sql)

    foods=results.map do |food|
      self.hydrate(food)
    end
  end

  def self.find(id)

    conn=self.open_connection
    sql="SELECT * FROM delicious_food WHERE id=#{id} LIMIT 1"

    foods = conn.exec(sql)

    food = self.hydrate(foods[0])

    food
  end

  def self.destroy(id)

    conn=self.open_connection

    sql="DELETE FROM delicious_food WHERE id = #{id}"

    conn.exec(sql)

  end


  def self.hydrate(food_data)

    food = UFO.new

    food.id = food_data['id']
    food.title = food_data['title']
    food.body = food_data['body']
    food.image = food_data['image']

    food
  end

end
