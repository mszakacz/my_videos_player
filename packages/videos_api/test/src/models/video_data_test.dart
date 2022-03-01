import 'package:test/test.dart';
import 'package:videos_api/videos_api.dart';

void main() {
  group('VideoData', () {
    VideoData createSubject({
      String id = '1',
      String name = 'video1',
      String url = 'https://62175a5d71e7672e537b9a06.mockapi.io/api/v1/videos',
    }) {
      return VideoData(
        id: id,
        name: name,
        url: url,
      );
    }

    group('constructor', () {
      test('works correctly', () {
        expect(
          createSubject,
          returnsNormally,
        );
      });
    });

    test('supports value equality', () {
      expect(
        createSubject(),
        equals(createSubject()),
      );
    });

    test('props are correct', () {
      expect(
        createSubject().props,
        equals([
          '1', // id
          'video1', // name
          'https://62175a5d71e7672e537b9a06.mockapi.io/api/v1/videos', // url
        ]),
      );
    });

    group('copyWith', () {
      test('returns the same object if not arguments are provided', () {
        expect(
          createSubject().copyWith(),
          equals(createSubject()),
        );
      });

      test('retains the old value for every parameter if null is provided', () {
        expect(
          createSubject().copyWith(
            id: null,
            name: null,
            url: null,
          ),
          equals(createSubject()),
        );
      });

      test('replaces every non-null parameter', () {
        expect(
          createSubject().copyWith(
            id: '2',
            name: 'video2',
            url: 'https://62175a5d71e7672e537b9a06.mockapi.io/api/v2/videos',
          ),
          equals(
            createSubject(
              id: '2',
              name: 'video2',
              url: 'https://62175a5d71e7672e537b9a06.mockapi.io/api/v2/videos',
            ),
          ),
        );
      });
    });

    group('fromJson', () {
      test('works correctly', () {
        expect(
          VideoData.fromJson(<String, dynamic>{
            'id': '1',
            'name': 'video1',
            'url': 'https://62175a5d71e7672e537b9a06.mockapi.io/api/v1/videos',
          }),
          equals(createSubject()),
        );
      });
    });

    group('toJson', () {
      test('works correctly', () {
        expect(
          createSubject().toJson(),
          equals(<String, dynamic>{
            'id': '1',
            'name': 'video1',
            'url': 'https://62175a5d71e7672e537b9a06.mockapi.io/api/v1/videos',
          }),
        );
      });
    });
  });
}
