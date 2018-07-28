require './common'

# user = User.first


# item = Item.new

# params = {weapon: '男性'}


# user.item.build(params)

post = Post.create(text: "新しいMacBook Proを買いました！")
comment = post.comments.build(text: "わー、いいなあ！")

comment.save