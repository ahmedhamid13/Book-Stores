class EndPointsController < ApplicationController
  def index
    @endpoints = {
      authors: [
        {
          method: 'GET',
          path: request.url[0..-5] + '/authors.json',
          description: ''
        },
        {
          method: 'GET',
          path: request.url[0..-5] + '/authors.json/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url[0..-5] + '/authors.json',
          params: 'name, about',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url[0..-5] + '/authors.json/:id',
          params: 'name, about',
          description: ''
        },
        {
          method: 'DELETE',
          path: request.url[0..-5] + '/authors.json/:id',
          description: ''
        }
      ],
      genres: [
        {
          method: 'GET',
          path: request.url[0..-5] + '/genres.json',
          description: ''
        },
        {
          method: 'GET',
          path: request.url[0..-5] + '/genres.json/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url[0..-5] + '/genres.json',
          params: 'name, about',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url[0..-5] + '/genres.json/:id',
          params: 'name, about',
          description: ''
        },
        {
          method: 'DELETE',
          path: request.url[0..-5] + '/genres.json/:id',
          description: ''
        }
      ],
      # owners: [
      #   {
      #     method: 'GET',
      #     path: request.url[0..-5] + '/owners.json',
      #     description: ''
      #   },
      #   {
      #     method: 'GET',
      #     path: request.url[0..-5] + '/owners.json/:id',
      #     description: ''
      #   },
      #   {
      #     method: 'POST',
      #     path: request.url[0..-5] + '/owners.json',
      #     params: 'name, email, password',
      #     description: ''
      #   },
      #   {
      #     method: 'PUT',
      #     path: request.url[0..-5] + '/owners.json/:id',
      #     params: 'name, email, password',
      #     description: ''
      #   },
      #   {
      #     method: 'DELETE',
      #     path: request.url[0..-5] + '/owners.json/:id',
      #     description: ''
      #   }
      # ],
      books: [
        {
          method: 'GET',
          path: request.url[0..-5] + '/books.json',
          description: ''
        },
        {
          method: 'GET',
          path: request.url[0..-5] + '/books.json/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url[0..-5] + '/books.json',
          params: 'title, description, published_at, author_id, genre_id',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url[0..-5] + '/books.json/:id',
          params: 'title, description, published_at, author_id, genre_id',
          description: ''
        },
        {
          method: 'DELETE',
          path: request.url[0..-5] + '/books.json/:id',
          description: ''
        }
      ],
      stores: [
        {
          method: 'GET',
          path: request.url[0..-5] + '/stores.json',
          description: ''
        },
        {
          method: 'GET',
          path: request.url[0..-5] + '/stores.json/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url[0..-5] + '/stores.json',
          params: 'name, about, phone, owner_id',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url[0..-5] + '/stores.json/:id',
          params: 'name, about, phone, owner_id',
          description: ''
        },
        {
          method: 'DELETE',
          path: request.url[0..-5] + '/stores.json/:id',
          description: ''
        }
      ],
      store_books: [
        {
          method: 'GET',
          path: request.url[0..-5] + '/store_books.json',
          description: ''
        },
        {
          method: 'GET',
          path: request.url[0..-5] + '/store_books.json/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url[0..-5] + '/store_books.json',
          params: 'edition, price, is_available, store_id, book_id',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url[0..-5] + '/store_books.json/:id',
          params: 'edition, price, is_available, store_id, book_id',
          description: ''
        },
        {
          method: 'DELETE',
          path: request.url[0..-5] + '/store_books.json/:id',
          description: ''
        }
      ],
      social_links: [
        {
          method: 'GET',
          path: request.url[0..-5] + '/social_links.json',
          description: ''
        },
        {
          method: 'GET',
          path: request.url[0..-5] + '/social_links.json/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url[0..-5] + '/social_links.json',
          params: 'site, link, store_id',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url[0..-5] + '/social_links.json/:id',
          params: 'site, link, store_id',
          description: ''
        },
        {
          method: 'DELETE',
          path: request.url[0..-5] + '/social_links.json/:id',
          description: ''
        }
      ],
      addresses: [
        {
          method: 'GET',
          path: request.url[0..-5] + '/addresses.json',
          description: ''
        },
        {
          method: 'GET',
          path: request.url[0..-5] + '/addresses.json/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url[0..-5] + '/addresses.json',
          params: 'country, city, region, street, is_main, store_id',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url[0..-5] + '/addresses.json/:id',
          params: 'country, city, region, street, is_main, store_id',
          description: ''
        },
        {
          method: 'DELETE',
          path: request.url[0..-5] + '/addresses.json/:id',
          description: ''
        }
      ],
      # users: [
      #   {
      #     method: 'GET',
      #     path: request.url[0..-5] + '/users.json',
      #     description: ''
      #   },
      #   {
      #     method: 'GET',
      #     path: request.url[0..-5] + '/users.json/:id',
      #     description: ''
      #   },
      #   {
      #     method: 'POST',
      #     path: request.url[0..-5] + '/users.json',
      #     params: 'name, email, password',
      #     description: ''
      #   },
      #   {
      #     method: 'PUT',
      #     path: request.url[0..-5] + '/users.json/:id',
      #     params: 'name, email, password',
      #     description: ''
      #   },
      #   {
      #     method: 'DELETE',
      #     path: request.url[0..-5] + '/users.json/:id',
      #     description: ''
      #   }
      # ],
      rates: [
        {
          method: 'GET',
          path: request.url[0..-5] + '/rates.json',
          description: ''
        },
        {
          method: 'GET',
          path: request.url[0..-5] + '/rates.json/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url[0..-5] + '/rates.json',
          params: 'rate, user_id, book_id',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url[0..-5] + '/rates.json/:id',
          params: 'rate, user_id, book_id',
          description: ''
        },
        {
          method: 'DELETE',
          path: request.url[0..-5] + '/rates.json/:id',
          description: ''
        }
      ], 
      reviews: [
        {
          method: 'GET',
          path: request.url[0..-5] + '/reviews.json',
          description: ''
        },
        {
          method: 'GET',
          path: request.url[0..-5] + '/reviews.json/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url[0..-5] + '/reviews.json',
          params: 'review, user_id, book_id',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url[0..-5] + '/reviews.json/:id',
          params: 'review, user_id, book_id',
          description: ''
        },
        {
          method: 'DELETE',
          path: request.url[0..-5] + '/reviews.json/:id',
          description: ''
        }
      ], 
    }


    render json: @endpoints
  end
end
