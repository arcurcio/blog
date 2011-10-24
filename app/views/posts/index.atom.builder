atom_feed do |feed|
  feed.title "WyeWorks Blog"
  feed.updated(@posts.first.created_at)

  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.title(post.title)
      entry.content(post.body, :type => 'html')
      entry.author { |author| author.name("Santiago Pastorino") }
    end
  end
end
