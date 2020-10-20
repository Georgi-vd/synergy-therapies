class PagesController < ApplicationController
  def home

  end
  def about

  end
  def contact

  end
  def therapies
    @therapies = ['Bilans bioénergétiques','Ateliers','Coaching','Animaux']
  end
  def formations
    @formations = ["Gestion de l'hypersensibilité chez le cadre dirigeant","Hypersensibilité de l'enfant", "Hypersensibilité chez l'adulte", "Gestion du stress"]
  end
end
