enum ECommittees {
  aess,
  cs,
  embs,
  ras,
  ttk,
  kok,
  wie;

  String get name {
    switch (this) {
      case ECommittees.aess:
        return 'AESS';
      case ECommittees.cs:
        return 'CS';
      case ECommittees.embs:
        return 'EMBS';
      case ECommittees.ras:
        return 'RAS';
      case ECommittees.ttk:
        return 'TTK';
      case ECommittees.kok:
        return 'KOK';
      case ECommittees.wie:
        return 'WIE';
    }
  }

  static ECommittees  fromString (String name){
    switch (name) {
      case 'AESS':
        return ECommittees.aess;
      case 'CS':
        return ECommittees.cs;
      case 'EMBS':
        return ECommittees.embs;
      case 'RAS':
        return ECommittees.ras;
      case 'TTK':
        return ECommittees.ttk;
      case 'KOK':
        return ECommittees.kok;
      case 'WIE':
        return ECommittees.wie;
      default:
        return ECommittees.aess;
    }
  }
}
