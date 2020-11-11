class PagesController < ApplicationController
  def home

  end
  def about

  end
  def contact

  end
  def soins
    @soins = ['Bilans bioénergétiques','Traitement à distance','Coaching','Animaux']
  end
  def ateliers
    @ateliers = ["Gestion de l'hypersensibilité chez le cadre dirigeant","Hypersensibilité de l'enfant", "Hypersensibilité chez l'adulte", "Gestion du stress"]
  end
  def actualités
    @actualités = ["Boîte à outils", "Meditation en ligne"]
  end
end
