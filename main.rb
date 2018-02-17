require 'json'

def read_contacts
  contacts_json = File.read("contacts.json")
  return JSON.parse(contacts_json, { symbolize_names: true })
end



contact = [
  {
    :name => "Thomas Jefferson",
    :phone => "+1 206 310 1369",
    :email => "tjeff@us.gov"
  },
  {
    :name => "Charles Darwin",
    :phone => "+2 360 155 8822",
    :email => "darles@evolve.org"
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
