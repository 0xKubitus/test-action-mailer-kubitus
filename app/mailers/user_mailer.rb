class UserMailer < ApplicationMailer

  default from: 'n.cubilier@gmail.com' # permet de renseigner l'adresse par defaut qui envoie les mails de notre app.

  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l'email en définissant destinataire et sujet :
    mail(to: @user.email, subject: "Ecris ici l'objet de ton email !")
  end



end # fin de la classe UserMailer
