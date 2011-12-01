# encoding: utf-8
class TopicMailer < BaseMailer
  def notify_reply(recipient, topic, reply)
    @reply_author = reply.user
    mail(:to => recipient.email, :subject => "[#{Settings.app_name}] 主題回覆通知： #{@topic.title}")
  end
end
