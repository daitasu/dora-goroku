Dora-Goroku is a public service api that serve about Doraemon quotes.

## GET /api/v1/quotes/random
### Response

```
{
  character: 'ドラえもん',
  quote: '人にできて、きみだけにできないなんてことあるもんか。'
}
```

## GET /api/v1/quotes
### Parameters

| Name | Description |
| ------ | ------ |
| keyword(query) | Keyword value that need to be considered for filter |

### Example

```
https://hogehoge.com/api/v1/quotes?keyword=人生
```

### Response
```
[
  {
    character: 'ドラえもん',
    quote: 'どっちも自分が正しいと思ってるよ。戦争なんてそんなもんだよ。'
  },
  {
    character: 'のび太',
    quote: 'あったかいふとんで、ぐっすりねる！こんな楽しいことがあるか。'
  },
  {
    character: 'ドラえもん',
    quote: 'きみはかんちがいしてるんだ。道をえらぶということは、かならずしも歩きやすい安全な道をえらぶってことじゃないんだぞ。'
  }
]
```