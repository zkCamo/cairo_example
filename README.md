# cairo_example
cairo example create / send
vote пример
// Создает новое голосование
let vote = create(id: 1);

// Задает результат голосования
set_result(vote, result: 1);

// Получает результат голосования
let result = get_result(vote);

// Проверяет результат голосования
assert(result == 1);
