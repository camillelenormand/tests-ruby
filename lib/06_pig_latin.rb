def translate(string)
  # Divise la chaîne en mots en utilisant l'espace comme délimiteur et stocke les mots dans un tableau
  words = string.split(' ')

  # Initialise un tableau contenant les voyelles
  vowels = ['a', 'e', 'i', 'o', 'u']

  # Initialise un tableau vide pour stocker les mots traduits
  result = []

  # Pour chaque mot dans le tableau de mots
  words.each do |word|
    # Si le mot commence par une voyelle, ajoute "ay" à la fin du mot
    if vowels.include?(word[0])
      result << word + 'ay'
    else
      # Si le mot commence par une consonne, recherche la première voyelle dans le mot en utilisant une boucle while
      consonants = ''
      while !vowels.include?(word[0])
        # Si le mot contient "qu", considère "qu" comme une consonne et ajoute les deux lettres à la chaîne de consonnes
        if word[0..1] == "qu"
          consonants += word.slice!(0..1)
        else
          # Ajoute la première lettre du mot à la chaîne de consonnes et la supprime du mot original
          consonants += word.slice!(0)
        end
      end
      # Ajoute le mot restant, la chaîne de consonnes et "ay" à la fin pour obtenir le mot traduit et l'ajoute au tableau de résultats
      result << word + consonants + 'ay'
    end
  end

  # Joint les mots traduits avec des espaces pour former la phrase complète et la renvoie
  result.join(' ')
end
 