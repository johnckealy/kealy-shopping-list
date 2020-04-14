require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import 'select2';
import { initSelect2 } from '../plugins/init_select2';

initSelect2();
