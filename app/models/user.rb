class User < ApplicationRecord

  after_create :welcome_send #callback pour lacer la methode welcome_send apres la creation d'un nouveau User

  def welcome_send
    UserMailer.welcome_email(self).deliver_now # appelle le mailer 'UserMailer' en lui faisant exécuter 'welcome_email' avec, pour seule entrée, l'instance créée (d'où le 'self').
  end



end # fin de la clazsse 'User'
