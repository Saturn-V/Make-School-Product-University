# Demo Rails App

## Creating the App and Adding the Politician Resource

* Create the app: `rails new politics`

* `cd politics`

* Generate a politicians (plural) controller: `rails g controller politicians index`

* Generate a politician (singular) model: `rails g model politician name:string party:string`

* Migrate the database: `rails db:migrate`

* Add a route to `routes.rb` that associates `/politicians` to the politicans controller and the `index` action (method). The route looks like this: `get 'politicians', to: 'politicians#index'`

* Fill in the index method in the politicians controller so we'll have an instance variable that points to a list of all politicians in the database.

```
def index
	@politicians = Politician.all
end
```

* Use an `each` loop in the `politicians/index.html.erb` template to dynamically build a list of all the politicians that our `@politicians` instance variable points to.

```
h2>Dynamic list of Politicians using each loop</h2>
<ul>
  <% @politicians.each do |p| %>
    <li>
      <%= p.name %> - <%= p.party %>
    </li>
  <% end %>
</ul>
```

* Go ahead and start your server with `rails server` and then load `http://localhost:3000/politicians` in your browser. You will see a not-so-exciting blank page.


* Now we just need to add some data. Start rails console with `rails console` and then run the following commands one line at a time.

```
h = Politician.new
h.name = "Hillary Clinton"
h.party = "Democrat"
h.save

t = Politician.new
t.name = "Donald Trump"
t.party = "Republican"
t.save
```

* Now reload your browser at `http://localhost:3000/politicians` and you should see two politicians in your list!

* View the source of the page in your browser, and try to find the lines that were generated within your each loop.


## Adding Associations

* Add a new StaffPerson model `rails g model staff_person name:string references:politician
`
* Add a StaffPerson in Rails Console, and associate them to a Politician

```
p = Politician.create(name: "Hillary Clinton", party: "democrate")
sp = StaffPerson.new(name: "Robby Mook")
sp.politician = p
sp.save 
```

* Add a Bill model that will have a many-to-many association with Politicians `rails g model bill title:string`

* Create a migration for linking Bills to Politicians: 
`rails g migration CreateBillsPoliticians bill:references politician:references`

* Customize the migration before running it

* Add a test to prove that Bills can be associated with Politicians

```
test "can add bill" do
	bill = Bill.new(title: "National 10pm Cat Curfew")
	@hillary.bills << bill
	@hillary.save
	
	assert_equal 1, bill.politicians.size
end
```
