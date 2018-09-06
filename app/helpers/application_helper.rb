module ApplicationHelper
  # application.html.erbから@postかnilを受け取って返す
  def get_twitter_card_info(post)
    twitter_card = {}
    if post.present?
      if post.id.present?
        twitter_card[:url] = "http://www.please-answer.me/answer/#{post.id}"
        twitter_card[:image] = "https://s3-ap-northeast-1.amazonaws.com/answer-me-716-production/images/#{post.id}.png"
      else
        twitter_card[:url] = 'http://www.please-answer.me/'
        twitter_card[:image] = "https://raw.githubusercontent.com/wonda12/answer-me-716/master/app/assets/images/top.png"
      end
    else
      twitter_card[:url] = 'http://www.please-answer.me/'
      twitter_card[:image] = "https://raw.githubusercontent.com/wonda12/answer-me-716/master/app/assets/images/top.png"
      # twitter_card[:image] = "https://raw.githubusercontent.com/wonda12/answer-me-716/master/app/assets/images/top.png"

    end
    twitter_card[:title] = "Answer.me"
    twitter_card[:card] = 'summary_large_image'
    twitter_card[:description] = 'クリックして質問に答えてみましょう！'
    twitter_card
  end
end
