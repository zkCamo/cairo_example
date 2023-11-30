// Контракт для голосования

// Переменные
struct Vote {
  // Идентификатор голосования
  id: felt;
  // Результаты голосования
  results: felt;
}

// Функции

// Создает новое голосование
@external
func create(id: felt) -> Vote {
  // Создает новое голосование
  let vote = Vote(id: id, results: 0);
  // Возвращает голосование
  return vote;
}

// Задает результат голосования
@external
func set_result(vote: Vote, result: felt) {
  // Проверяет, что голосование существует
  assert(vote_exists(vote.id));
  // Задает результат голосования
  vote.results = result;
}

// Получает результат голосования
@external
func get_result(vote: Vote) -> felt {
  // Проверяет, что голосование существует
  assert(vote_exists(vote.id));
  // Возвращает результат голосования
  return vote.results;
}
