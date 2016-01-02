class GameController < ApplicationController
  def index
    render
  end

  def show
    @map = [
      [ nil       ,  nil         , :london     ,  nil         , :essen   ,  nil     ,  nil    ],
      [:montreal  , :newyork     , :madrid     , :paris       , :milan   , :stpeters,  nil    ],
      [:atlanta   , :washington  ,  nil        , :algiers     ,  nil     , :istanbul, :moscow ],
      [ nil       ,  nil         , :lagos      ,  nil         , :cairo   ,  nil     ,  nil    ],
      [:miami     , :saopaulo    , :kinshasa   , :khartoum    , :riyadh  , :baghdad ,  nil    ],
      [ nil       , :bogota      , :buenosaires, :johannesburg, :mumbai  , :karachi , :tehran ],
      [:mexicocity, :lima        , :santiago   , :chennai     ,  nil     , :delhi   ,  nil    ],
      [ nil       , :losangeles  , :jakarta    , :bangkok     , :kolkata ,  nil     , :beijing],
      [:chicago   ,  nil         , :sydney     , :hochiminh   , :hongkong, :shanghai, :seoul  ],
      [ nil       , :sanfrancisco,  nil        , :manila      , :taipei  , :osaka   , :tokyo  ],
    ]
    render
  end
end
