# brutforce script to make some organizational units

# you need to change "DC=ad,DC=jtpiper,DC=lan" to match your domain and update the ST initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name JP_Computers -Path "DC=ad,DC=jtpiper,DC=lan" -Description "JP Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=JP_Computers,DC=ad,DC=jtpiper,DC=lan"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=JP_Computers,DC=ad,DC=jtpiper,DC=lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=JP_Computers,DC=ad,DC=jtpiper,DC=lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=JP_Computers,DC=ad,DC=jtpiper,DC=lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=JP_Computers,DC=ad,DC=jtpiper,DC=lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=JP_Computers,DC=ad,DC=jtpiper,DC=lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=JP_Computers,DC=ad,DC=jtpiper,DC=lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=JP_Computers,DC=ad,DC=jtpiper,DC=lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=JP_Computers,DC=ad,DC=jtpiper,DC=lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=JP_Computers,DC=ad,DC=jtpiper,DC=lan"
New-ADOrganizationalUnit -Name JP_Groups -Path "DC=ad,DC=jtpiper,DC=lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name JP_Privileged_Accounts -Path "DC=ad,DC=jtpiper,DC=lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name JP_Users -Path "DC=ad,DC=jtpiper,DC=lan" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=JP_Groups,DC=ad,DC=jtpiper,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=JP_Groups,DC=ad,DC=jtpiper,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=JP_Groups,DC=ad,DC=jtpiper,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=JP_Groups,DC=ad,DC=jtpiper,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=JP_Groups,DC=ad,DC=jtpiper,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=JP_Groups,DC=ad,DC=jtpiper,DC=lan"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=JP_Groups,DC=ad,DC=jtpiper,DC=lan"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
