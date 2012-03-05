<<<<<<< HEAD
#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
=======
# encoding: utf-8
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
#---
class CartsController < ApplicationController
  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carts }
    end
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
    begin
      @cart = Cart.find(params[:id])
    rescue ActiveRecord::RecordNotFound
<<<<<<< HEAD
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to store_url, notice: 'Invalid cart'
=======
      logger.error "Invalid cart#{params[:id]}is not available"
      redirect_to store_url, notice:'invalid cart.'
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    else
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @cart }
      end
    end
  end

  # GET /carts/new
  # GET /carts/new.json
  def new
    @cart = Cart.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cart }
    end
  end

  # GET /carts/1/edit
  def edit
    @cart = Cart.find(params[:id])
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(params[:cart])

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render json: @cart, status: :created, location: @cart }
      else
        format.html { render action: "new" }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /carts/1
  # PUT /carts/1.json
  def update
    @cart = Cart.find(params[:id])

    respond_to do |format|
      if @cart.update_attributes(params[:cart])
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
<<<<<<< HEAD
        format.json { head :no_content }
=======
        format.json { head :ok }
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
      else
        format.html { render action: "edit" }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
<<<<<<< HEAD
    @cart = current_cart
=======
    @cart = Cart.find(params[:id])
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    @cart.destroy
    session[:cart_id] = nil

    respond_to do |format|
<<<<<<< HEAD
      format.html { redirect_to store_url }
      format.json { head :no_content }
=======
      format.html { redirect_to store_url,
        notice:'Cart is empty.'}
      format.json { head :ok }
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
    end
  end
end
