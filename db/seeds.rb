# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
user = User.where(email: "manutronics@gmail.com").first_or_initialize
user.update!(
  password: "palavrapasse",
  password_confirmation: "palavrapasse"
)

# 10.times do |i|
#   BlogPost.create(title: "Blog Numero #{i}", content: "Application code for an ESP32 program is commonly written in C. Before we can
#     deploy an application, we must compile the code into binary machine code instructions.
#     Before that though, let us spend a few minutes thinking about the code.
#     We write code using an editor and ideally an editor that understands the programming
#     language in which we are working. These editors provide syntax assistance, keyword
#     coloring and even contextual suggestions. After we save our entered code, we compile
#     it and then deploy it and then test it. This cycle is repeated so often that we often use a
#     product that encompasses editing, compilation, execution and testing as an integrated
#     whole. The generic name for such a product is an \"Integrated Development
#     Environment\" or \"IDE\". There are instances of these both fee and free. In the free
#     camp, my weapons of choice are Eclipse and Arduino IDE.
#     The Eclipse IDE is an extremely rich and powerful environment. Originally written by
#     IBM, it was open sourced many years ago. It is implemented in Java which means that
#     it runs and behaves identically across all the common platforms (Windows, Linux, OSx).
#     The nature of Eclipse is that it is architected as a series of extensible plug-ins. Because
#     of this, many contributors across many disciplines have extended the environment and
#     it is now a cohesive framework for just about everything. Included in this mix is a set of
#     plug-ins which, on aggregate, are called the \"C Developers Tools\" or \"CDT\". If one
#     takes a bare bones Eclipse and adds the CDT, one now has a first rate C IDE.
#     However, what the CDT does not supply (and for good reason) are the actual C
#     compilers and associated tools themselves. Instead, one \"defines\" the tools that one
#     wishes to use within the CDT and the CDT takes it from there.
#     For our ESP32 story, this means that if we can find (which we can) a set of C compiler
#     tools that take C source and generate Xtensa binary, we can use CDT to build our
#     programs.
#     To make things more interesting though, we need to realize that C is not the only
#     language we can use for building ESP32 applications. We can also use C++ and
#     assembly.", published_at: Time.current)
# end


# 10.times do |i|
#   @blog_post = BlogPost.where(title: "Blog Numero #{i}").first_or_initialize
#   blog_post.update(published_at: Time.current)
# end
