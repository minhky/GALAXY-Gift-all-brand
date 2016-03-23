.class public Lcom/google/android/gms/playlog/internal/PlayLoggerContext;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/playlog/internal/zze;


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final versionCode:I

.field public final zzaYA:Ljava/lang/String;

.field public final zzaYB:Ljava/lang/String;

.field public final zzaYC:Z

.field public final zzaYD:Ljava/lang/String;

.field public final zzaYE:Z

.field public final zzaYF:I

.field public final zzaYy:I

.field public final zzaYz:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/playlog/internal/zze;

    invoke-direct {v0}, Lcom/google/android/gms/playlog/internal/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->CREATOR:Lcom/google/android/gms/playlog/internal/zze;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZI)V
    .registers 11
    .param p1, "versionCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageVersionCode"    # I
    .param p4, "logSource"    # I
    .param p5, "uploadAccountName"    # Ljava/lang/String;
    .param p6, "loggingId"    # Ljava/lang/String;
    .param p7, "logAndroidId"    # Z
    .param p8, "logSourceName"    # Ljava/lang/String;
    .param p9, "isAnonymous"    # Z
    .param p10, "qosTier"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYy:I

    iput p4, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYz:I

    iput-object p5, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYA:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYB:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYC:Z

    iput-object p8, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYD:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYE:Z

    iput p10, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYF:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageVersionCode"    # I
    .param p3, "logSource"    # I
    .param p4, "logSourceName"    # Ljava/lang/String;
    .param p5, "uploadAccountName"    # Ljava/lang/String;
    .param p6, "loggingId"    # Ljava/lang/String;
    .param p7, "isAnonymous"    # Z
    .param p8, "qosTier"    # I

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->versionCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYy:I

    iput p3, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYz:I

    iput-object p4, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYD:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYA:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYB:Ljava/lang/String;

    if-nez p7, :cond_22

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYC:Z

    iput-boolean p7, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYE:Z

    iput p8, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYF:I

    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageVersionCode"    # I
    .param p3, "logSource"    # I
    .param p4, "uploadAccountName"    # Ljava/lang/String;
    .param p5, "loggingId"    # Ljava/lang/String;
    .param p6, "logAndroidId"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->versionCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYy:I

    iput p3, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYz:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYD:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYA:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYB:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYC:Z

    iput-boolean v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYE:Z

    iput v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYF:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    .end local p1    # "object":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    if-eqz v2, :cond_59

    check-cast p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    .end local p1    # "object":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->versionCode:I

    if-ne v2, v3, :cond_57

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYy:I

    iget v3, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYy:I

    if-ne v2, v3, :cond_57

    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYz:I

    iget v3, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYz:I

    if-ne v2, v3, :cond_57

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYD:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYD:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYA:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYA:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYB:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYB:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-boolean v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYC:Z

    iget-boolean v3, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYC:Z

    if-ne v2, v3, :cond_57

    iget-boolean v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYE:Z

    iget-boolean v3, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYE:Z

    if-ne v2, v3, :cond_57

    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYF:I

    iget v3, p1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYF:I

    if-eq v2, v3, :cond_4

    :cond_57
    move v0, v1

    goto :goto_4

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_59
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYD:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYA:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYB:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYC:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYE:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PlayLoggerContext["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "packageVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logSourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uploadAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "loggingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logAndroidId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isAnonymous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "qosTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->zzaYF:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/playlog/internal/zze;->zza(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Landroid/os/Parcel;I)V

    return-void
.end method
