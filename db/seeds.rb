# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "  >> Destroying tables ..."
BingoSquare.destroy_all
Bingo.destroy_all
Square.destroy_all
Card.destroy_all
User.destroy_all


puts "  >> Seeding tables ..."
test_user = User.create(:email => "test@test.com", :password => "qwaszx", :password_confirmation => "qwaszx", :username => 'novel_bingo')

fantasy_card = Card.create(:user => test_user, :featured => true, :name => "r/Fantasy 2020 Book Bingo")

Square.create(:card => fantasy_card, :name => "Novel Translated from its Original Language", :position => 1, :description => "The spirit of this square would be to read a book that's originally not written in English. But you can also read books in another language you speak. Doesn't matter what language you read the book in, as long as it's not the original language it was first published in.", :hard => "Written by a woman. Coauthor does not count.")
Square.create(:card => fantasy_card, :name => "Setting Featuring Snow, Ice, or Cold", :position => 2, :description => "This setting must used be for a good portion of the book.", :hard => "The entire book takes place in this setting.")
Square.create(:card => fantasy_card, :name => "Optimistic SFF", :position => 3, :description => "The sun is shining, the birds are singing, and while we've come across some trouble, we're going to overcome it *together*. Sometimes very bad things happen (like an entire apocalypse) but ultimately you're left feeling things will get better, with a sense of hope. Includes genres like hopepunk and noblebright.", :hard => "Not Becky Chambers")
Square.create(:card => fantasy_card, :name => "Novel Featuring Necromancy", :position => 4, :description => "Raising the dead, woot! Self-explanatory.", :hard => "Necromancer is the protagonist.")
Square.create(:card => fantasy_card, :name => "Ace / Aro Spec Fic", :position => 5, :description => "A novel featuring Asexual and/or Aromantic character(s). It should be explicitly stated (either by the character themselves, another character, or the author) that a character isn't interested in romance or sex.", :hard => "Ace / Aro protagonist.")
Square.create(:card => fantasy_card, :name => "Novel Featuring a Ghost", :position => 6, :description => "This one is pretty self-explanatory.", :hard => "At least one main protagonist is a ghost.")
Square.create(:card => fantasy_card, :name => "Novel Featuring Exploration", :position => 7, :description => "Boldly go.... Again, pretty self-explanatory.", :hard => "The exploration is the central plot.")
Square.create(:card => fantasy_card, :name => "Climate Fiction", :position => 8, :description => "Climate should play a significant role in the story. This includes the genres of solarpunk, post-apocalyptic, ecopunk, clifi.", :hard => "Not post-apocalyptic")
Square.create(:card => fantasy_card, :name => "Novel with a Colour in the Title", :position => 9, :description => "Self-explanatory.", :hard => "Not black, red, grey, or white.")
Square.create(:card => fantasy_card, :name => "Any r/fantasy Book Club Book of the Month OR r/fantasy Read-along Book", :position => 10, :description => "Any past or still active book clubs count, as well as past or current read-alongs. NOTE: All of the current book club info can also be found on our goodreads page.", :hard => "Must read a current selection of either a book club or read-along and participate in the discussion.")
Square.create(:card => fantasy_card, :name => "Self-Published SFF Novel", :position => 11, :description => "Only self-published novels will count for this square. If the novel has been picked up by a publisher as long as you read it when it was self-pubbed it will still count.", :hard => "Self-pubbed and has fewer than 50 ratings on goodreads.")
Square.create(:card => fantasy_card, :name => "Novel with Chapter Epigraphs", :position => 12, :description => "A quote used to introduce a chapter, it often serves as a summary or counterpoint to the passage that follows, although it may simply set the stage for it.", :hard => "Original to the novel (i.e., not a quotation from another source).")
Square.create(:card => fantasy_card, :name => "Novel Published in 2020", :position => 13, :description => "Self-explanatory.", :hard => "It's also a Debut Novel.")
Square.create(:card => fantasy_card, :name => "Novel Set in a School or University", :position => 14, :description => "Self-explanatory.", :hard => "Not Harry Potter or the Magicians.")
Square.create(:card => fantasy_card, :name => "Book About Books", :position => 15, :description => "Books must be central to the plot somehow.", :hard => "Does not feature a library (public, school, or private).")
Square.create(:card => fantasy_card, :name => "A Book that Made You Laugh", :position => 16, :description => "Doesn't have to be a comedy, but should make you laugh at least once while reading.", :hard => "Not Pratchett.")
Square.create(:card => fantasy_card, :name => "Five SFF Short Stories", :position => 17, :description => "Self-explanatory.", :hard => "Read an entire SFF anthology or collection.")
Square.create(:card => fantasy_card, :name => "Big Dumb Object", :position => 18, :description => "A novel featuring any mysterious object of unknown origin and immense power which generates an intense sense of wonder or horror by its mere existence and which people must seek to understand before it's too late. In this case, we are counting mythical forests, objects under the sea or in space, mysterious signals or illnesses, and science that is too futuristic for our protagonists to understand. NOT a monster. Examples: Mythago Wood (Holdstock), Sphere (Crichton), Under the Dome (King), Mass Effect, Wanderers (Wendig), Noumenon (Lostetter), The Expanse (Corey), The Interdependency (Scalzi), The Chronicles of the One (Roberts), Themis Files (Neuvel), World War Z (Brooks), Uprooted (Novik).", :hard => "The classic golden-age of science fiction definition of Big Dumb Object - Dyson Spheres, alien spaceships, a BIG thing that appears with no explanation. https://www.goodreads.com/list/show/37505.Big_Dumb_Objects")
Square.create(:card => fantasy_card, :name => "Feminist Novel", :position => 19, :description => "Includes feminist themes such as but not limited to gender inequality, sexuality, race, economics, and reproduction. It's not enough to have strong female characters or a setting where women are equal to men, feminist themes must be central to and directly addressed in a critical manner by the plot.", :hard => "Feminist novel by a person of colour or Indigeous author.")
Square.create(:card => fantasy_card, :name => "Novel by a Canadian Author", :position => 20, :description => "Canada has a fantastic SFF scene, let's explore some of the authors there using this square.", :hard => "Book from an Canadian small press OR self-published Canadian author.")
Square.create(:card => fantasy_card, :name => "Novel with a Number in the Title", :position => 21, :description => "Self-explanatory.", :hard => "Also features a colour in the title.")
Square.create(:card => fantasy_card, :name => "Romantic Fantasy / Paranormal Romance", :position => 22, :description => "Romance needs to be central to the plot and the story would not make sense if it was removed. Should also either have a happily ever after or a happy for now ending.", :hard => "Read and participate in HEA Book Club pick.")
Square.create(:card => fantasy_card, :name => "Novel with a Magical Pet", :position => 23, :description => "Self-explanatory.", :hard => "Magical pet can also speak.")
Square.create(:card => fantasy_card, :name => "Format: Graphic Novel (at least 1 vol.) OR Audiobook / Audio drama", :position => 24, :description => "This is a format, not a genre however, please stick to something within speculative fiction. If you are reading individual comics for this square please read a volume’s worth. You can also use a manga volume for this square (again, please keep it to speculative fiction genres). You may also choose to listen to an audiobook OR an audio drama for this square - any speculative fiction audiobook / audio drama will count (novel length).", :hard => "Graphic Novel - stand alone graphic novel. Audiobook / audio drama - has to be over 25 hours long.")
Square.create(:card => fantasy_card, :name => "Novel Featuring Politics", :position => 25, :description => "Politics are central to the plot. This covers everything from royalty, elections, wars, and even smaller local politics.", :hard => "Not featuring royalty.")
