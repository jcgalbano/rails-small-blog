class ArticlesController
  
  class CutLen
    def cut(articles)
      for article in articles
        if article[:text].length > 500
          article[:text] = article[:text][0..500] +  "..."
        else

        end  
      end
    end
  end

end
