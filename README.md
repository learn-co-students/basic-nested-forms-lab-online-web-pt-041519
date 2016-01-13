
# Basic Nested Forms Lab

## Objectives

1. Construct a nested params hash with data about the primary object and a belongs to and has many association.
2. Use the conventional key names for associated data (assoication_attributes).
3. Name form inputs correctly to create a nested params hash with belongs to and has many associated data.
4. Define a conventional association writer for the primary model to properly instantiated associations based on the nested params association data.
5. Define a custom association writer for the primary model to properly instantiated associations with custom logic (like unique by name) on the nested params association data.
5. Use fields_for to generate the association fields.

## Data Model: Recipe with ingredients

The first data model we're going to be working with today is a recipe with ingredients.

  * Recipe
    * has many ingredients
  * Ingredient
    * belongs to a recipe
    * ingredient.name: string
    * ingredient.quantity: string

The models and show routes have been set up for you, the associations and associated
migrations have not.

### Instructions

1. Create migrations and associations in the models.
2. Build a recipe form that accepts ten ingredients.

## Data model: Posts and Authors

The next data model in our Rails app is posts with authors.

  * Post
    * belongs to an author
    * post.content: string
  * Author
    * has many posts
    * author.name: string

We want to be able to create an Author when we create a Post. However, we don't want
to create duplicate Authors.

The models and read views have been set up for you, the associations and migrations
haven't.

### Instructions

1. Create migrations and model associations.
2. Create a form for Post that lets you set the author's name
  * it should create an author object on submit if one doesn't exist
  * it should not create duplicate author rows

<a href='https://learn.co/lessons/basic-nested-forms-lab' data-visibility='hidden'>View this lesson on Learn.co</a>
