class Prompt {
  String name;
  String? label;
  String imageUrl;
  String promptBody;

  // constructor
  Prompt({
    required this.name,
    required this.imageUrl,
    required this.promptBody,
    this.label,
  });
}

// fake data for prompts

final List<Prompt> promptList = [
  Prompt(
    name: 'Sunset Reverie',
    label: 'nature',
    imageUrl:
        'https://images.pexels.com/photos/1234567/pexels-photo-1234567.jpg',
    promptBody:
        'Describe the emotions evoked by this vibrant orange forest during dusk.',
  ),
  Prompt(
    name: 'Urban Pulse',
    label: 'cityscape',
    imageUrl:
        'https://images.pexels.com/photos/2345678/pexels-photo-2345678.jpg',
    promptBody: 'Write a short story set in a city that never sleeps.',
  ),
  Prompt(
    name: 'Coffee Contemplation',
    label: null,
    imageUrl:
        'https://images.pexels.com/photos/3456789/pexels-photo-3456789.jpg',
    promptBody:
        'Imagine the thoughts brewing in someone’s mind as they sip a warm coffee.',
  ),
  Prompt(
    name: 'Mountain Majesty',
    label: 'landscape',
    imageUrl:
        'https://images.pexels.com/photos/4567890/pexels-photo-4567890.jpg',
    promptBody: 'Write a poem about standing atop a snowy mountain peak.',
  ),
  Prompt(
    name: 'Rainy Reflections',
    label: 'weather',
    imageUrl:
        'https://images.pexels.com/photos/5678901/pexels-photo-5678901.jpg',
    promptBody:
        'Describe the world outside through droplets sliding down the glass.',
  ),
  Prompt(
    name: 'Wildflower Whisper',
    label: null,
    imageUrl:
        'https://images.pexels.com/photos/6789012/pexels-photo-6789012.jpg',
    promptBody: 'Create a metaphor where wildflowers speak about resilience.',
  ),
  Prompt(
    name: 'Cosmic Wonder',
    label: 'space',
    imageUrl:
        'https://images.pexels.com/photos/7890123/pexels-photo-7890123.jpg',
    promptBody: 'What secrets might the stars tell if they could speak?',
  ),
  Prompt(
    name: 'Ocean Symphony',
    label: 'seascape',
    imageUrl:
        'https://images.pexels.com/photos/8901234/pexels-photo-8901234.jpg',
    promptBody: 'Capture the sound of waves through vivid, sensory detail.',
  ),
  Prompt(
    name: 'Library of Dreams',
    label: 'interior',
    imageUrl:
        'https://images.pexels.com/photos/9012345/pexels-photo-9012345.jpg',
    promptBody: 'Imagine a secret corridor hidden behind these bookshelves.',
  ),
  Prompt(
    name: 'Autumn Pathway',
    label: null,
    imageUrl:
        'https://images.pexels.com/photos/1012346/pexels-photo-1012346.jpg',
    promptBody: 'Narrate a journey down this leaf-strewn path in fall.',
  ),
];
