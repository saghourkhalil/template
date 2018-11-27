desc "Envoi de la newsletter"
task newsletter: :production do
  Newsletter.new.perform if Time.now.strftime("%A") == "Monday" 
end