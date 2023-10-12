class WordsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    def index
      if params[:search] == nil
        @words= Word.all
      elsif params[:search] == ''
        @words= Word.all
      else
        #部分検索
        @words = Word.where("about LIKE ? ",'%' + params[:search] + '%')
      end
      #ここまで
    end

    def new
        @word = Word.new
      end
    
      def create
        word = Word.new(word_params)
        word.user_id = current_user.id 
        if word.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
      
      def top
      end

      def kankou
      end

      def friend_1
        @words = Word.all
      end

      def friend_2
        @words = Word.all
      end

      def friend_3
        @words = Word.all
      end
    
      def love_1
        @words = Word.all
      end

      def love_2
        @words = Word.all
      end

      def love_3
        @words = Word.all
      end
    
      def work_1
        @words = Word.all
      end

      def work_2
        @words = Word.all
      end

      def work_3
        @words = Word.all
      end

      def show
        @word = Word.find(params[:id])
        @comments = @word.comments
        @comment = Comment.new
      end
      def edit
        @word = Word.find(params[:id])
      end
      def update
        word = Word.find(params[:id])
        if word.update(word_params)
          redirect_to :action => "show", :id => word.id
        else
          redirect_to :action => "new"
        end
      end
      def destroy
        word = Word.find(params[:id])
        word.destroy
        redirect_to action: :index
      end
      private
      def word_params
        params.require(:word).permit(:phrase, :phrase1, :phrase2, :phrase3, :phrase4, :phrase5, :phrase6, :phrase7, :phrase8, :phrase9, :about, :category, :frequency)
      end

end