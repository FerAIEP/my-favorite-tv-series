puts 'creando series de tv...'

TvShow.destroy_all

50.times do
    TvShow.create(
        [
            {
                name: 'game of thrones',
                summary: 'Years after a rebellion spurred by a stolen bride to be and the blind ambitions of a mad King',
                release_date: '2011-04-17',
                rating: 7.8
            },
            {
                name: 'Squid Game',
                summary: 'The series revolves around Seong Gi-hun, a divorced and indebted chauffeur, who is invited to play a series of children\'s games for a chance earning a large cash prize.' ,
                release_date: '17-09-2021',
                rating: 5.6
            },
            {
                name: 'Angry Birds',
                summary: 'Red, an angry bird, has been an outcast from Bird Island ever since he was a hatchling due to his short temper and his huge, jet-black eyebrows.',
                release_date: '05-02-2016',
                rating: 6.1
            },
            {
                name: 'Jaws 2',
                summary: 'Chief Brody suspecting another great white shark is terrorizing the fictional sea side resort of Amity Island, following a series of incidents and disappearances, and his suspicions are eventually proven true.',
                release_date: '16-06-1978',
                rating: 9.8
            },
            {
                name: 'Agatha Christie\'s Crooked House',
                summary: 'The granddaughter of late Greek-British business tycoon Aristide Leonides, Sophia Leonides, visits private investigator Charles Hayward in his office.',
                release_date: '31-10-2017',
                rating: 8.6
            },
            {
                name: 'Blade Runner: The Final Cut',
                summary: 'A blade runner must pursue and terminate four replicants who stole a ship in space, and have returned to Earth to find their creator.',
                release_date: '25-06-1982',
                rating: 6.5
            }
        ]
    )
end

puts 'finalizado!!!'
