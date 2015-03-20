describe App do

  describe 'GET /' do
    before do
      get '/'
    end

    it 'sends a 200 status code' do
      expect(last_response.status).to eq(200)
    end

    it 'renders super hero form' do
      expect(last_response.body).to include("Create a Team and Heroes!")
      expect(last_response.body).to include("<form")
    end
  end

  describe 'POST /teams' do
    before do
      post '/teams', {
        :team => {
          :name => "Team Ruby",
          :motto => "We love Ruby!",
          :members => {
            :super1 => {
              :name => "Amanda",
              :power => "Ruby",
              :bio => "I love Ruby!"
            },
            :super2 => {
              :name => "Arel",
              :power => "JavaScript",
              :bio => "I love JavaScript!"
            },
            :super3 => {
              :name => "Katie",
              :power => "Sinatra",
              :bio => "I love Sinatra!"
            }
          }
        }
      }
    end

    it 'sends a 200 status code' do
      expect(last_response.status).to eq(200)
    end

    it 'displays the team info upon submission' do
      expect(last_response.body).to include("We love Ruby!")
    end
  end
end
