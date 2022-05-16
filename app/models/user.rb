class User < ApplicationRecord

  after_create :welcome_send #Grâce au callback after_create, on exécute la méthode welcome_send sur l'instance qui vient d'être sauvée en BDD.

  def welcome_send
    UserMailer.welcome_email(self).deliver_now # appelle le mailer 'UserMailer' en lui faisant exécuter 'welcome_email' avec, pour seule entrée, l'instance créée (d'où le 'self').
  end
# welcome_send dit, en résumé, "exécute NOW la méthode welcome_email située dans le mailer UserMailer"



end # fin de la classe 'User'
