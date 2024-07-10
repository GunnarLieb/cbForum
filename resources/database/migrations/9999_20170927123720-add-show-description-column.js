'use strict';
/*DONE added to setting table */
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.addColumn('Settings', 'showDescription', {
      type: Sequelize.BOOLEAN,
      defaultValue: false
    })
  },

  down: (queryInterface, Sequelize) => {
    return queryInterface.dropColumn('Settings', 'showDescription')
  }
};
