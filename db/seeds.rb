# coding: utf-8

puts 'Seeding the database...'

[
  { pt: 'Arte', en: 'Art', fr: 'Art'},
  { pt: 'Artes plásticas', en: 'Visual Arts', fr: 'Art plastique' },
  { pt: 'Circo', en: 'Circus', fr: 'Cirque' },
  { pt: 'Comunidade', en: 'Community', fr: 'Comunauté' },
  { pt: 'Humor', en: 'Humor', fr: 'Humour' },
  { pt: 'Quadrinhos', en: 'Comicbooks', fr: 'bd' },
  { pt: 'Dança', en: 'Dance', fr: 'Dance' },
  { pt: 'Design', en: 'Design', fr: 'Design' },
  { pt: 'Eventos', en: 'Events', fr: 'Événementiel' },
  { pt: 'Moda', en: 'Fashion', fr: 'Mode' },
  { pt: 'Gastronomia', en: 'Gastronomy', fr: 'Gastronomie' },
  { pt: 'Cinema e Vídeo', en: 'Film & Video', fr: 'Cinéma' },
  { pt: 'Jogos', en: 'Games', fr: 'Jeux' },
  { pt: 'Jornalismo', en: 'Journalism', fr: 'Journalisme' },
  { pt: 'Música', en: 'Music', fr: 'Musique' },
  { pt: 'Fotografia', en: 'Photography', fr: 'Photographie' },
  { pt: 'Ciência e Tecnologia', en: 'Science & Technology', fr: 'Sciences et technologies' },
  { pt: 'Teatro', en: 'Theatre', fr: 'Théatre' },
  { pt: 'Esporte', en: 'Sport', fr: 'Sport' },
  { pt: 'Web', en: 'Web', fr: 'Web' },
  { pt: 'Carnaval', en: 'Carnival', fr: 'Carnaval' },
  { pt: 'Arquitetura e Urbanismo', en: 'Architecture & Urbanism', fr: 'Architecture et Urbanisme' },
  { pt: 'Literatura', en: 'Literature', fr: 'Literature' },
  { pt: 'Mobilidade e Transporte', en: 'Mobility & Transportation', fr: 'Transport et Mobilité' },
  { pt: 'Meio Ambiente', en: 'Environment', fr: 'Environement' },
  { pt: 'Negócios Sociais', en: 'Social Business', fr: 'Social' },
  { pt: 'Educação', en: 'Education', fr: 'Éducation' },
  { pt: 'Filmes de Ficção', en: 'Fiction Films' , fr: 'Films de fiction'},
  { pt: 'Filmes Documentários', en: 'Documentary Films', fr: 'Films documentaire' },
  { pt: 'Filmes Universitários', en: 'Experimental Films' },
  { pt: 'Saúde', en: 'Health', fr: 'Santé' }
].each do |name|
   category = Category.find_or_initialize_by(name_es: name[:es])
   category.update_attributes({
     name_es: name[:es]
   })
   category.update_attributes({
     name_fr: name[:fr]
   })
 end


{
  company_name: 'MiCasa Argentina',
  company_logo: 'http://catarse.me/assets/catarse_bootstrap/logo_icon_catarse.png',
  host: 'crowd.sensaway.co.nz',
  base_url: "https://crowd.sensaway.co.nz",

  email_contact: 'info@sensaway.co.nz',
  email_payments: 'info@sensaway.co.nz',
  email_projects: 'info@sensaway.co.nz',
  email_system: 'info@sensaway.co.nz',
  email_no_reply: 'no-reply@sensaway.co.nz',
  facebook_url: "https://facebook.com/Sensaway/",
  facebook_app_id: '351589295233969',
  twitter_url: 'https://twitter.com',
  twitter_username: "twitter",
  mailchimp_url: "http://catarse.us5.list-manage.com/subscribe/post?u=ebfcd0d16dbb0001a0bea3639&amp;id=149c39709e",
  catarse_fee: '0.5',
  support_forum: 'https://support.sensaway.co.nz/',
  base_domain: 'crowd.sensaway.co.nz',
  uservoice_secret_gadget: 'change_this',
  uservoice_key: 'uservoice_key',
  faq_url: 'https://support.sensaway.co.nz/',
  feedback_url: 'https://support.sensaway.co.nz/forums/20170331-micasa-ideas',
  terms_url: 'https://support.sensaway.co.nz/knowledgebase/articles/20170331-terminos-de-uso',
  privacy_url: 'https://support.sensaway.co.nz/knowledgebase/articles/20170331-politica-de-privacidad',
  about_channel_url: 'https://blog.sensaway.co.nz/acerca-de-micasa/',
  instagram_url: 'https://instagram.com/',
  blog_url: "https://medium.com/feed/@Sensaway",
  github_url: 'https://github.com/ToroNZ/MiCasa',
  contato_url: 'https://support.sensaway.co.nz/'
}.each do |name, value|
   conf = CatarseSettings.find_or_initialize_by(name: name)
   conf.update_attributes({
     value: value
   }) if conf.new_record?
end

OauthProvider.find_or_create_by!(name: 'facebook') do |o|
  o.key = 'your_facebook_app_key'
  o.secret = 'your_facebook_app_secret'
  o.path = 'facebook'
end


[
    {name: 'Taplejung', acronym: 'Taplejung'},
    {name: 'Panchthar', acronym: 'Panchthar'},
    {name: 'Ilam', acronym: 'Ilam'},
    {name: 'Jhapa', acronym: 'Jhapa'},
    {name: 'Morang', acronym: 'Morang'},
    {name: 'Sunsari', acronym: 'Sunsari'},
    {name: 'Dhankutta', acronym: 'Dhankutta'},
    {name: 'Sankhuwasabha', acronym: 'Sankhuwasabha'},
    {name: 'Bhojpur', acronym: 'Bhojpur'},
    {name: 'Terhathum', acronym: 'Terhathum'},
    {name: 'Okhaldunga', acronym: 'Okhaldunga'},
    {name: 'Khotang', acronym: 'Khotang'},
    {name: 'Solukhumbu', acronym: 'Solukhumbu'},
    {name: 'Udaypur', acronym: 'Udaypur'},
    {name: 'Saptari', acronym: 'Saptari'},
    {name: 'Siraha', acronym: 'Siraha'},
    {name: 'Dhanusa', acronym: 'Dhanusa'},
    {name: 'Mahottari', acronym: 'Mahottari'},
    {name: 'Sarlahi', acronym: 'Sarlahi'},
    {name: 'Sindhuli', acronym: 'Sindhuli'},
    {name: 'Ramechhap', acronym: 'Ramechhap'},
    {name: 'Dolkha', acronym: 'Dolkha'},
    {name: 'Sindhupalchauk', acronym: 'Sindhupalchauk'},
    {name: 'Kavreplanchauk', acronym: 'Kavreplanchauk'},
    {name: 'Lalitpur', acronym: 'Lalitpur'},
    {name: 'Bhaktapur', acronym: 'Bhaktapur'},
    {name: 'Kathmandu', acronym: 'Kathmandu'},
    {name: 'Nuwakot', acronym: 'Nuwakot'},
    {name: 'Rasuwa', acronym: 'Rasuwa'},
    {name: 'Dhading', acronym: 'Dhading'},
    {name: 'Makwanpur', acronym: 'Makwanpur'},
    {name: 'Rautahat', acronym: 'Rautahat'},
    {name: 'Bara', acronym: 'Bara'},
    {name: 'Parsa', acronym: 'Parsa'},
    {name: 'Chitwan', acronym: 'Chitwan'},
    {name: 'Gorkha', acronym: 'Gorkha'},
    {name: 'Lamjung', acronym: 'Lamjung'},
    {name: 'Tanahun', acronym: 'Tanahun'},
    {name: 'Syangja', acronym: 'Syangja'},
    {name: 'Kaski', acronym: 'Kaski'},
    {name: 'Manag', acronym: 'Manag'},
    {name: 'Mustang', acronym: 'Mustang'},
    {name: 'Parwat', acronym: 'Parwat'},
    {name: 'Myagdi', acronym: 'Myagdi'},
    {name: 'Baglung', acronym: 'Baglung'},
    {name: 'Gulmi', acronym: 'Gulmi'},
    {name: 'Palpa', acronym: 'Palpa'},
    {name: 'Nawalparasi', acronym: 'Nawalparasi'},
    {name: 'Rupandehi', acronym: 'Rupandehi'},
    {name: 'Arghakhanchi', acronym: 'Arghakhanchi'},
    {name: 'Kapilvastu', acronym: 'Kapilvastu'},
    {name: 'Pyuthan', acronym: 'Pyuthan'},
    {name: 'Rolpa', acronym: 'Rolpa'},
    {name: 'Rukum', acronym: 'Rukum'},
    {name: 'Salyan', acronym: 'Salyan'},
    {name: 'Dang', acronym: 'Dang'},
    {name: 'Bardiya', acronym: 'Bardiya'},
    {name: 'Surkhet', acronym: 'Surkhet'},
    {name: 'Dailekh', acronym: 'Dailekh'},
    {name: 'Banke', acronym: 'Banke'},
    {name: 'Jajarkot', acronym: 'Jajarkot'},
    {name: 'Dolpa', acronym: 'Dolpa'},
    {name: 'Humla', acronym: 'Humla'},
    {name: 'Kalikot', acronym: 'Kalikot'},
    {name: 'Mugu', acronym: 'Mugu'},
    {name: 'Jumla', acronym: 'Jumla'},
    {name: 'Bajura', acronym: 'Bajura'},
    {name: 'Bajhang', acronym: 'Bajhang'},
    {name: 'Achham', acronym: 'Achham'},
    {name: 'Doti', acronym: 'Doti'},
    {name: 'Kailali', acronym: 'Kailali'},
    {name: 'Kanchanpur', acronym: 'Kanchanpur'},
    {name: 'Dadeldhura', acronym: 'Dadeldhura'},
    {name: 'Baitadi', acronym: 'Baitadi'},
    {name: 'Darchula', acronym: 'Darchula'}
].each do |name|
  State.find_or_create_by!(name: name[:name]) do |o|
    o.acronym = name[:acronym]
  end
end

[
    {name: 'Kathmandu', state_id: '27'},
    {name: 'Pokhara', state_id: '40'},
    {name: 'Lalitpur', state_id: '25'},
    {name: 'Birganj', state_id: '34'},
    {name: 'Biratnagar', state_id: '5'},
    {name: 'Bharatpur', state_id: '35'},
    {name: 'Janakpur', state_id: '17'},
    {name: 'Hetauda', state_id: '31'},
    {name: 'Nepalgunj', state_id: '60'},
    {name: 'Itahari', state_id: '6'},
    {name: 'Dharan', state_id: '6'},
    {name: 'Butwal', state_id: '49'},
    {name: 'Dhangadhi', state_id: '71'},
    {name: 'Budhanilkantha', state_id: '27'},
    {name: 'Gokarneshwar', state_id: '27'},
    {name: 'Bhimdatta', state_id: '72'},
    {name: 'Tilottama', state_id: '49'},
    {name: 'Tokha', state_id: '27'},
    {name: 'Birendranagar', state_id: '58'},
    {name: 'Kalaiya', state_id: '33'},
    {name: 'Tulsipur', state_id: '56'},
    {name: 'Chandragiri', state_id: '27'},
    {name: 'Madhyapur Thimi', state_id: '26'},
    {name: 'Bhaktapur', state_id: '26'},
    {name: 'Gadhimai', state_id: '33'},
    {name: 'Tarakeshwar', state_id: '27'},
    {name: 'Lahan', state_id: '16'},
    {name: 'Damak', state_id: '4'},
    {name: 'Banganga', state_id: '51'},
    {name: 'Attariya', state_id: '71'},
    {name: 'Lumbini Sanskritik', state_id: '49'},
    {name: 'Chandrapur', state_id: '32'},
    {name: 'Triyuga', state_id: '14'},
    {name: 'Ratnanagar', state_id: '35'},
    {name: 'Lekhnath', state_id: '40'},
    {name: 'Nagarjun', state_id: '27'},
    {name: 'Kritipur', state_id: '27'},
    {name: 'Ghorahi', state_id: '56'},
    {name: 'Siddharthanagar', state_id: '49'},
    {name: 'Kohlpur', state_id: '60'},
    {name: 'Mahalakshmi', state_id: '25'},
    {name: 'Lamki Chuha', state_id: '71'},
    {name: 'Ghodaghodi', state_id: '71'},
    {name: 'Kageshwari-Manohara', state_id: '27'},
    {name: 'Birtamod', state_id: '4'},
    {name: 'Siraha', state_id: '16'},
    {name: 'Mechinagar', state_id: '4'},
    {name: 'Gulariya', state_id: '57'},
    {name: 'Tikapur', state_id: '71'},
    {name: 'Kawasoti', state_id: '48'},
    {name: 'Khairahani', state_id: '35'},
    {name: 'Bansgadhi', state_id: '57'},
    {name: 'Gaidakot', state_id: '48'},
    {name: 'Belauri', state_id: '72'},
    {name: 'Rajapur', state_id: '57'},
    {name: 'Bhadrapur', state_id: '4'},
    {name: 'Barahathwa', state_id: '19'},
    {name: 'Shivaraj', state_id: '51'},
    {name: 'Pathari Sanischare', state_id: '5'},
    {name: 'Bedkot', state_id: '72'},
    {name: 'Golbazar', state_id: '16'},
    {name: 'Kanchan Rup', state_id: '15'},
    {name: 'Koshi Haraicha', state_id: '5'},
    {name: 'Byas', state_id: '38'},
    {name: 'Dhandadimai', state_id: '16'},
    {name: 'Gauradaha', state_id: '4'},
    {name: 'Rapti', state_id: '35'},
    {name: 'Mirchaiya', state_id: '16'},
    {name: 'Sainamina', state_id: '49'},
    {name: 'Shani-Arjun', state_id: '4'},
    {name: 'Dhanushadham', state_id: '17'},
    {name: 'Jaleshwar', state_id: '18'},
    {name: 'Punarwas', state_id: '72'},
    {name: 'Kapilvastu', state_id: '51'},
    {name: 'Chireshwarnath', state_id: '17'},
    {name: 'Devdaha', state_id: '49'},
    {name: 'Hariwan', state_id: '19'},
    {name: 'Jhalari Pipaladi', state_id: '72'},
    {name: 'Tripur', state_id: '56'},
    {name: 'Kamalamai', state_id: '20'},
    {name: 'Gorkha', state_id: '36'},
    {name: 'Ishwarpur', state_id: '19'},
    {name: 'Suryabinayak', state_id: '26'},
    {name: 'Sandhikharka', state_id: '50'},
    {name: 'Kankai', state_id: '4'},
    {name: 'Narayani', state_id: '35'},
    {name: 'Sunwal', state_id: '48'},
    {name: 'Shivasatakshi', state_id: '4'},
    {name: 'Garuda', state_id: '32'},
    {name: 'Nilkantha', state_id: '30'},
    {name: 'Dodhara-Chandani', state_id: '71'},
    {name: 'Bajrabarahi', state_id: '25'},
    {name: 'Mahagadimai', state_id: '33'},
    {name: 'Kalika', state_id: '35'},
    {name: 'Dhankuta', state_id: '7'},
    {name: 'Pyuthan', state_id: '52'},
    {name: 'Shuklagandaki', state_id: '38'},
    {name: 'Rajbiraj', state_id: '15'},
    {name: 'Bhajani-Trishakti', state_id: '71'},
    {name: 'Karyabinayak', state_id: '25'},
    {name: 'Anantalingeshwar', state_id: '26'},
    {name: 'Madi', state_id: '35'},
    {name: 'Bardibs', state_id: '18'},
    {name: 'Sukhipur', state_id: '16'},
    {name: 'Krishnapur', state_id: '72'},
    {name: 'Rampur', state_id: '47'},
    {name: 'Gaur', state_id: '32'},
    {name: 'Nijgadh', state_id: '33'},
    {name: 'Urlabari', state_id: '5'},
    {name: 'Parashuram', state_id: '73'},
    {name: 'Chitrawan', state_id: '35'},
    {name: 'Ganeshman Charanath', state_id: '17'},
    {name: 'Bardaghat', state_id: '48'},
    {name: 'Lamahi', state_id: '56'},
    {name: 'Panchkhal', state_id: '24'},
    {name: 'Sharada', state_id: '55'},
    {name: 'Bherimalika', state_id: '61'},
    {name: 'Sundar Dulari', state_id: '5'},
    {name: 'Changunarayan', state_id: '26'},
    {name: 'Bheriganga', state_id: '58'},
    {name: 'Kusma', state_id: '43'},
    {name: 'Gaushala', state_id: '18'},
    {name: 'Belbari', state_id: '5'},
    {name: 'Mithila', state_id: '17'},
    {name: 'Devchuli', state_id: '48'},
    {name: 'Putalibazar', state_id: '39'},
    {name: 'Tansen', state_id: '47'},
    {name: 'Lalbandi', state_id: '19'},
    {name: 'Baglung', state_id: '45'},
    {name: 'Dullu', state_id: '59'},
    {name: 'Malangwa', state_id: '19'},
    {name: 'Shambhunath', state_id: '15'},
    {name: 'Bagchaur', state_id: '55'},
    {name: 'Besisahar', state_id: '37'},
    {name: 'Ramgram', state_id: '48'},
    {name: 'Melamchi', state_id: '23'},
    {name: 'Inaruwa', state_id: '6'},
    {name: 'Godawari', state_id: '25'},
    {name: 'Resunga', state_id: '46'},
    {name: 'Manthali', state_id: '21'},
    {name: 'Ramdhuni-Bhasi', state_id: '6'},
    {name: 'Rangeli', state_id: '5'},
    {name: 'Beni', state_id: '44'},
    {name: 'Panauti', state_id: '24'},
    {name: 'Madhyabindu', state_id: '48'},
    {name: 'Katari', state_id: '14'},
    {name: 'Bidur', state_id: '28'},
    {name: 'Babai', state_id: '57'},
    {name: 'Pokhariya', state_id: '34'},
    {name: 'Suryodaya', state_id: '3'},
    {name: 'Khandbari', state_id: '8'},
    {name: 'Dipayal-Silgadhi', state_id: '70'},
    {name: 'Sanoshri Taratal', state_id: '57'},
    {name: 'Bhrikuti', state_id: '51'},
    {name: 'Duhabi-Bhaluwa', state_id: '6'},
    {name: 'Shankharapur', state_id: '27'},
    {name: 'Dudhauli', state_id: '20'},
    {name: 'Sabaila', state_id: '17'},
    {name: 'Banepa', state_id: '24'},
    {name: 'Phidim', state_id: '2'},
    {name: 'Chainpur', state_id: '8'},
    {name: 'Simraunghad', state_id: '33'},
    {name: 'Shubhaghat-Gangamala', state_id: '58'},
    {name: 'Dakshinkali', state_id: '27'},
    {name: 'Waling', state_id: '30'},
    {name: 'Beltar-Basaha', state_id: '14'},
    {name: 'Letang Bhogateni', state_id: '5'},
    {name: 'Kolhabi', state_id: '33'},
    {name: 'Palungtar', state_id: '36'},
    {name: 'Bhimeshwar', state_id: '22'},
    {name: 'Mangalsen', state_id: '69'},
    {name: 'Mahamanjushri-Nagarkot', state_id: '26'},
    {name: 'Amaragadhi', state_id: '73'},
    {name: 'Narayan', state_id: '59'},
    {name: 'Beldandi', state_id: '72'},
    {name: 'Thaha', state_id: '31'},
    {name: 'Dapcha Kashikhanda', state_id: '24'},
    {name: 'Dhulikhel', state_id: '24'},
    {name: 'Saptakoshi', state_id: '15'},
    {name: 'Hanumannagar Yoginimai', state_id: '15'},
    {name: 'Api', state_id: '75'},
    {name: 'Sundarbazar', state_id: '37'},
    {name: 'Krishnanagar', state_id: '51'},
    {name: 'Jayaprithvi', state_id: '68'},
    {name: 'Buddhabatika', state_id: '51'},
    {name: 'Patan', state_id: '74'},
    {name: 'Myanglung', state_id: '10'},
    {name: 'Illam', state_id: '3'},
    {name: 'Taplejung', state_id: '1'},
    {name: 'Chandannath', state_id: '66'},
    {name: 'Rainas', state_id: '37'},
    {name: 'Musikot', state_id: '54'},
    {name: 'Bhanu', state_id: '38'},
    {name: 'Sanphebagar', state_id: '69'},
    {name: 'Badimalika', state_id: '67'},
    {name: 'Bhirkot', state_id: '39'},
    {name: 'Pakhribas', state_id: '7'},
    {name: 'Diktel', state_id: '12'},
    {name: 'Dasharathchand', state_id: '74'},
    {name: 'Laliguras', state_id: '10'},
    {name: 'Siddhicharan', state_id: '11'},
    {name: 'Anbu Khaireni', state_id: '38'},
    {name: 'Bhojpur', state_id: '9'},
    {name: 'Kamalbazaar', state_id: '69'},
    {name: 'Chautara', state_id: '23'},
    {name: 'Bandipur', state_id: '38'},
    {name: 'Chaurjahari', state_id: '54'},
    {name: 'Madi', state_id: '8'},
    {name: 'Jiri', state_id: '22'},
    {name: 'Liwang', state_id: '53'},
    {name: 'Shadanand', state_id: '9'},
    {name: 'Chapakot', state_id: '39'},
    {name: 'Ramechap', state_id: '21'},
    {name: 'Dudhkunda', state_id: '13'},
    {name: 'Deumai', state_id: '3'},
    {name: 'Madhyanepal', state_id: '37'},
    {name: 'Fulgama', state_id: '17'}
].each do |name|
  City.find_or_create_by!(name: name[:name]) do |o|
    o.state_id = name[:state_id]
  end
end



puts
puts '============================================='
puts ' Showing all Authentication Providers'
puts '---------------------------------------------'

OauthProvider.all.each do |conf|
  a = conf.attributes
  puts "  name #{a['name']}"
  puts "     key: #{a['key']}"
  puts "     secret: #{a['secret']}"
  puts "     path: #{a['path']}"
  puts
end

puts
puts '============================================='
puts ' Showing all entries in Configuration Table...'
puts '---------------------------------------------'

CatarseSettings.all.each do |conf|
  a = conf.attributes
  puts "  #{a['name']}: #{a['value']}"
end

Rails.cache.clear

puts '---------------------------------------------'
puts 'Done!'
