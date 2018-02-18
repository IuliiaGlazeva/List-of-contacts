require 'json'

def read_contacts
  contacts_json = File.read("contacts.json")
  return JSON.parse(contacts_json, { symbolize_names: true })
end



contact = [
  {
    "name": "Thomas Jefferson",
    "phone": "+1 206 310 1369",
    "email": "tjeff@us.gov"
  },
  {
    "name": "Charles Darwin",
    "phone": "+44 20 7123 4567",
    "email": "darles@evolve.org"
  },
  {
    "name": "Nikola Tesla",
    "phone": "+385 43 987 3355",
    "email": "nik@inductlabs.com"
  },
  {
    "name": "Genghis Khan",
    "phone": "+976 2 194 2222",
    "email": "contact@empire.com"
  },
  {
    "name": "Malcom X",
    "phone": "+1 310 155 8822",
    "email": "x@theroost.org"
  }
]

def output_contacts(contact)
  contact.map{|i| "{#{i[:name]} => #{i[:phone]}}"}
end
p output_contacts(contact)


def select_contact1(contact)
  contact.select {|i| i[:phone].start_with?("+1")}
end
p select_contact1(contact)


def select_contact2(contact)
  contact.select {|i| i[:email].end_with?("org")}
end
p select_contact2(contact)

def reduce_contact1(contact)
  select_contact1(contact).reduce(0){ |sum, i|
   sum += 1}
end
puts reduce_contact1(contact)
