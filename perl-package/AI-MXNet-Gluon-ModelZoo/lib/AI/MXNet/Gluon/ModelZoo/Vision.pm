# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

package AI::MXNet::Gluon::ModelZoo::Vision;
use strict;
use warnings;
use AI::MXNet::Gluon::ModelZoo::ModelStore;
use AI::MXNet::Gluon::ModelZoo::Vision::AlexNet;
use AI::MXNet::Gluon::ModelZoo::Vision::DenseNet;
use AI::MXNet::Gluon::ModelZoo::Vision::Inception;
use AI::MXNet::Gluon::ModelZoo::Vision::MobileNet;
use AI::MXNet::Gluon::ModelZoo::Vision::ResNet;
use AI::MXNet::Gluon::ModelZoo::Vision::SqueezeNet;
use AI::MXNet::Gluon::ModelZoo::Vision::VGG;

sub import
{
    my ($class, $short_name) = @_;
    if($short_name)
    {
        $short_name =~ s/[^\w:]//g;
        if(length $short_name)
        {
            my $short_name_package =<<"EOP";
            package $short_name;
            \@${short_name}::ISA = ('AI::MXNet::Gluon::ModelZoo::Vision');
            1;
EOP
            eval $short_name_package;
        }
    }
}

1;
