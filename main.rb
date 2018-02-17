require 'json'

def read_contacts
  contacts_json = File.read("contacts.json")
  return JSON.parse(contacts_json, { symbolize_names: true })
end

contact = [{"Arno Fleming" =>  "+31 6 414 14141"},
           {"Mike Farrell" =>  "+1 123 123 1234"}]

def output_contacts(contact)
  contact.map{|i| i}
end
p output_contacts(contact)
