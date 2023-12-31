\c quotes_dev

INSERT INTO categories (id, name) VALUES
    (1, 'Motivational'),
    (2, 'Persistence'),
    (3, 'Technology'),
    (4, 'Dreams'),
    (5, 'Positivity'),
    (6, 'Success');

INSERT INTO quotes (quote_text, author, category, category_id, date_added, rating, is_featured, is_favorite) VALUES

    ('The only way to do great work is to love what you do.', 'Steve Jobs', 'Motivational', 1, '2023-08-15', 5, false, false),
    
    ('The way to get started is to quit talking and begin doing.', 'Walt Disney', 'Motivational', 1, '2023-08-20', 4, true, false),

    ('Don''t watch the clock; do what it does. Keep going.', 'Sam Levenson', 'Motivational', 1, '2023-08-21', 5, false, false),

    ('The only limit to our realization of tomorrow will be our doubts of today.', 'Franklin D. Roosevelt', 'Motivational', 1, '2023-08-23', 4, false, false),

    ('The only thing that stands between you and your dream is the will to try and the belief that it is actually possible.', 'Joel Brown', 'Motivational', 1, '2023-08-24', 4, true, false),

    ('The secret of getting ahead is getting started.', 'Mark Twain', 'Motivational', 1, '2023-08-27', 5, false, false),

    ('You miss 100% of the shots you don''t take.', 'Wayne Gretzky', 'Motivational', 1, '2023-08-28', 4, false, false),

    ('Success is walking from failure to failure with no loss of enthusiasm.', 'Winston Churchill', 'Motivational', 1, '2023-08-29', 5, false, false),

    ('Believe you can and you''re halfway there.', 'Theodore Roosevelt', 'Motivational', 1, '2023-08-22', 5, false, false),
    ('It does not matter how slowly you go as long as you do not stop.', 'Confucius', 'Motivational', 1, '2023-08-25', 5, false, false),

    ('It does not matter how slowly you go as long as you do not stop.', 'Confucius', 'Persistence', 2, '2023-08-25', 5, false, false),

    ('The harder the conflict, the greater the triumph.', 'George Washington', 'Persistence', 2, '2023-08-30', 4, true, false),

    ('Perseverance is not a long race; it is many short races one after the other.', 'Walter Elliot', 'Persistence', 2, '2023-09-01', 5, false, false),

    ('Success is stumbling from failure to failure with no loss of enthusiasm.', 'Winston Churchill', 'Persistence', 2, '2023-09-05', 4, false, false),

    ('Our greatest glory is not in never falling, but in rising every time we fall.', 'Confucius', 'Persistence', 2, '2023-09-08', 5, false, false),

    ('Continuous effort - not strength or intelligence - is the key to unlocking our potential.', 'Winston Churchill', 'Persistence', 2, '2023-09-10', 5, false, false),

    ('Fall seven times, stand up eight.', 'Japanese Proverb', 'Persistence', 2, '2023-09-12', 4, false, false),

    ('The only difference between a successful person and others is not a lack of strength, not a lack of knowledge, but rather a lack in will.', 'Vince Lombardi', 'Persistence', 2, '2023-09-15', 5, true, false),

    ('Perseverance, secret of all triumphs.', 'Victor Hugo', 'Persistence', 2, '2023-09-18', 4, false, true),

    ('When you have a great and difficult task, something perhaps almost impossible, if you only work a little at a time, every day a little, suddenly the work will finish itself.', 'Isak Dinesen', 'Persistence', 2, '2023-09-20', 5, true, false), 

    ('Any sufficiently advanced technology is indistinguishable from magic.', 'Arthur C. Clarke', 'Technology', 3, '2023-09-25', 5, false, false),

    ('The best way to predict the future is to create it.', 'Alan Kay', 'Technology', 3, '2023-09-30', 4, false, true),

    ('It''s not a bug. It''s an undocumented feature.', 'Anonymous', 'Technology', 3, '2023-10-05', 3, false, false),

    ('The greatest thing about tomorrow is, I will be better than I am today.', 'Elon Musk', 'Technology', 3, '2023-10-10', 5, false, false),

    ('The technology you use impresses no one. The experience you create with it is everything.', 'Sean Gerety', 'Technology', 3, '2023-10-15', 4, false, false),

    ('The computer was born to solve problems that did not exist before.', 'Bill Gates', 'Technology', 3,'2023-10-20', 4, false, false),

    ('Code is like humor. When you have to explain it, it’s bad.', 'Cory House', 'Technology', 3, '2023-10-25', 5, false, false),

    ('Technology is a tool that allows us to amplify our potential.', 'Satya Nadella', 'Technology', 3, '2023-10-30', 4, false, false),

    ('We always overestimate the change that will occur in the next two years and underestimate the change that will occur in the next ten. Don’t let yourself be lulled into inaction.', 'Bill Gates', 'Technology', 3, '2023-11-05', 5, false, true),

    ('The advance of technology is based on making it fit in so that you don''t really even notice it, so it''s part of everyday life.', 'Bill Gates', 'Technology', 3,'2023-11-10', 4, true, false),

    ('The future belongs to those who believe in the beauty of their dreams.', 'Eleanor Roosevelt', 'Dreams', 3, '2023-08-17', 4, false, false),

    ('Believe you can and you''re halfway there.', 'Theodore Roosevelt', 'Dreams', 4, '2023-08-22', 5, false, true),

    ('Dreams can become a reality when we possess a vision and a plan to pursue them.', 'Elon Musk', 'Dreams', 4,'2023-09-01', 5, false, false),

    ('The only thing that stands between you and your dream is the will to try and the belief that it is actually possible.', 'Joel Brown', 'Dreams', 4,'2023-09-24', 4, false, false),

    ('Don’t be pushed around by the fears in your mind. Be led by the dreams in your heart.', 'Roy T. Bennett', 'Dreams', 4,'2023-10-05', 4, true, false),

    ('All our dreams can come true if we have the courage to pursue them.', 'Walt Disney', 'Dreams', 4,'2023-10-15', 5, true, false),

    ('The biggest adventure you can take is to live the life of your dreams.', 'Oprah Winfrey', 'Dreams', 4,'2023-11-01', 5, false, false),   
    
     ('The only way to do great work is to love what you do.', 'Steve Jobs', 'Positivity', 5, '2023-08-15', 5, false, false),

    ('In three words I can sum up everything I''ve learned about life: it goes on.', 'Robert Frost', 'Positivity', 5, '2023-08-14', 4, false, true),

    ('Keep your face always toward the sunshine—and shadows will fall behind you.', 'Walt Whitman', 'Positivity', 5, '2023-09-01', 4, false, false),

    ('You are never too old to set another goal or to dream a new dream.', 'C.S. Lewis', 'Positivity', 5, '2023-09-18', 4, false, true),

    ('Optimism is the faith that leads to achievement. Nothing can be done without hope and confidence.', 'Helen Keller', 'Positivity', 5, '2023-10-05', 5, false, false),

    ('Positive thinking will let you do everything better than negative thinking will.', 'Zig Ziglar', 'Positivity', 5, '2023-10-15', 4, true, false),

    ('Success is not final, failure is not fatal: It is the courage to continue that counts.', 'Winston Churchill', 'Positivity', 5, '2023-11-01', 5, false, true),

    ('Believe you can and you''re halfway there.', 'Theodore Roosevelt', 'Positivity', 5, '2023-11-18', 5, false, false),

    ('The only limit to our realization of tomorrow will be our doubts of today.', 'Franklin D. Roosevelt', 'Positivity', 5, '2023-12-02', 4, false, false),

    ('Success is walking from failure to failure with no loss of enthusiasm.', 'Winston Churchill', 'Success', 6,'2023-08-29', 5, false, false),

    ('Success is not how high you have climbed, but how you make a positive difference to the world.', 'Roy T. Bennett', 'Success', 6,'2023-09-10', 4, false, false),

    ('Success usually comes to those who are too busy to be looking for it.', 'Henry David Thoreau', 'Success', 6,'2023-09-20', 4, false, true),

    ('Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.', 'Albert Schweitzer', 'Success', 6,'2023-10-05', 5, true, false),

    ('Success is the sum of small efforts, repeated day in and day out.', 'Robert Collier', 'Success', 6,'2023-10-15', 4, false, false),

    ('Success is not in what you have, but who you are.', 'Bo Bennett', 'Success', 6,'2023-11-01', 5, true, false),
    
    ('Success is not just about making money. It''s about making a difference.', 'Unknown', 'Success', 6,'2023-11-18', 4, false, true),

    ('Success is not about the destination, but the journey.', 'Zig Ziglar', 'Success', 6, '2023-12-02', 4, false, false);
