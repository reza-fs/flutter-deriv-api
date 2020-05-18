import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_deriv_api/api/account/account_status/account_status.dart';
import 'package:flutter_deriv_api/api/models/enums.dart';
import 'package:flutter_deriv_api/services/dependency_injector/injector.dart';
import 'package:flutter_deriv_api/services/dependency_injector/module_container.dart';

void main() {
  test('Account status test', () async {
    ModuleContainer().initialize(Injector.getInjector(), isMock: true);

    final AccountStatus accountStatus =
        await AccountStatus.fetchAccountStatus();

    expect(
      accountStatus.status.first,
      AccountStatusType.financialInformationNotComplete,
    );
    expect(
      accountStatus.status[1],
      AccountStatusType.tradingExperienceNotComplete,
    );
    expect(accountStatus.promptClientToAuthenticate, false);
    expect(accountStatus.riskClassification, AccountRiskClassification.low);
    expect(
      accountStatus.authentication.document.status,
      AccountIdentityStatus.none,
    );
    expect(
      accountStatus.authentication.identity.status,
      AccountIdentityStatus.none,
    );
  });
}